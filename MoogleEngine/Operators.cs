namespace MoogleEngine
{
    public class Operators 
    {
        public static (string, string, float) Exclude(string word) {
            if (word.StartsWith("!")) return (word[(word.IndexOf("!") + 1)..], "!", 1);
            else return (word, "", 0);
        }

        public static (string, string, float) Relevance(string word) {
            if (word.StartsWith("^")) return (word[(word.IndexOf("^") + 1)..], "^", 1);
            else return (word, "", 0);
        }

        public static (string, string, float) Importance(string word) {
            int count = 0;
            while(word.StartsWith("*")) {
                word = word[1..];
                count += 1;
            }
            if(count > 0) return (word, "*", (float)Math.Pow(10, count));
            else return (word, "", count);
        }
    }
}