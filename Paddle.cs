using System;
using AllegroSharp;
namespace Pong
{
    public class Paddle : IPaddle
    {
        public Point Position
        {
            get;
            set;
        }
        public Color Color
        {
            get;
            set;
        }
    }
}

