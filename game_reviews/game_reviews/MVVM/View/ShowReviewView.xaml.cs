﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace game_reviews.MVVM.View
{
    /// <summary>
    /// Logika interakcji dla klasy ShowReviewView.xaml
    /// </summary>
    public partial class ShowReviewView : UserControl
    {
        /// <summary>
        /// Create view with reviews by user
        /// </summary>
        public ShowReviewView()
        {
            int UserId = 0;
            InitializeComponent();

            foreach (Window window in Application.Current.Windows)
            {
                if (window.GetType() == typeof(MenuWindow))
                {
                    UserId = Int32.Parse((window as MenuWindow).UserIdText.Text);
                }
            }

            if (UserId != 0)
            {
                GameReviewsEntities db = new GameReviewsEntities();
                var reviews = from r in db.Reviews
                              from u in db.Users
                              from g in db.Games
                              where r.ID_User == u.ID && r.ID_Game == g.ID && u.ID == UserId
                              select new
                              {
                                  Id = r.ID,
                                  Game = g.Title,
                                  Comment = r.Comment,
                                  Grade = r.Rating
                              };

                UserReviewList.ItemsSource = reviews.ToList();
            }
        }

        /// <summary>
        /// Show window to update review
        /// </summary>
        private void ModifyComment_Click(object sender, RoutedEventArgs e)
        {
            string t = UserReviewList.SelectedItem.ToString();
            Console.WriteLine(t);
            string id = "";
            for (int i = 7; i < t.Length; i++)
            {
                if (t[i] == ',')
                {
                    break;
                }
                id += t[i];

            }

            UpdateReviewWindow updateReviewWindow = new UpdateReviewWindow(Int32.Parse(id));
            updateReviewWindow.ShowDialog();
        }
    }
}
