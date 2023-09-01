using System;

namespace University.Common
{
    public static class Validators
    {
        // Metoda CalculateControlSum oblicza sumę kontrolną na podstawie podanego ciągu znaków i wag.
        // Parametry:
        // - input: ciąg znaków do obliczeń
        // - weights: tablica wag
        // - offset: opcjonalny przesunięcie w tablicy wag (domyślnie 0)
        // Zwraca:
        // - Sumę kontrolną
        public static int CalculateControlSum(string input, int[] weights, int offset = 0)
        {
            int controlSum = 0;

            // Iterujemy przez znaki w ciągu (do przedostatniego znaku).
            for (int i = 0; i < input.Length - 1; i++)
            {
                // Konwertujemy znak na liczbę i mnożymy przez odpowiednią wagę.
                int digit = int.Parse(input[i].ToString());
                int weight = weights[i + offset];
                controlSum += digit * weight;
            }

            return controlSum;
        }
    }
}
