using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Threading.Tasks;

namespace USTaxation.Api.Helpers
{
    public static class Extensions
    {
        /// <summary>
        /// 
        /// </summary>
        /// <param name="reader"></param>
        /// <param name="filename"></param>
        /// <param name="path">if null/empty will use IO.Path.GetTempPath()</param>
        /// <param name="extension">will use csv by default</param>
        public static void ToCsv(this IDataReader reader, string filename, string path = null, string extension = "csv")
        {
            int nextResult = 0;
            do
            {
                var filePath = Path.Combine(string.IsNullOrEmpty(path) ? Path.GetTempPath() : path, string.Format("{0}.{1}", filename, extension));
                using (StreamWriter writer = new StreamWriter(filePath))
                {
                    writer.WriteLine(string.Join(",", Enumerable.Range(0, reader.FieldCount).Select(reader.GetName).ToList()));
                    int count = 0;
                    while (reader.Read())
                    {
                        writer.WriteLine(string.Join(",", Enumerable.Range(0, reader.FieldCount).Select(reader.GetValue).ToList()));
                        if (++count % 100 == 0)
                        {
                            writer.Flush();
                        }
                    }
                }

                filename = string.Format("{0}-{1}", filename, ++nextResult);
            }
            while (reader.NextResult());
        }

        public static List<string> ToList(this IDataReader reader)
        {
            var result = new List<string>();
            do
            {
                result.Add(string.Join(",", Enumerable.Range(0, reader.FieldCount).Select(reader.GetName).ToList()));
                while (reader.Read())
                {
                    result.Add(string.Join(",", Enumerable.Range(0, reader.FieldCount).Select(reader.GetValue).ToList()));
                }
            }
            while (reader.NextResult());
            return result;
        }

        public static IEnumerable<Dictionary<string, object>> ToDictionary(this IDataReader reader)
        {
            var results = new List<Dictionary<string, object>>();
            var cols = new List<string>();
            for (var i = 0; i < reader.FieldCount; i++)
                cols.Add(reader.GetName(i));

            while (reader.Read())
            {
                var result = new Dictionary<string, object>();
                foreach (var col in cols)
                    result.Add(col, reader[col]);
                results.Add(result);
            }

            return results;
        }

        public static string ToJson(this IDataReader reader)
        {
            var results = reader.ToDictionary();
            return JsonConvert.SerializeObject(results, Formatting.Indented);
        }
    }
}
