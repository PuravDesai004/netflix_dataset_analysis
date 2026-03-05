# Netflix Data Analysis

i picked up the netflix dataset from kaggle and used it to practice SQL and Power BI. went through the data and tried to answer some questions i was curious about — stuff like which countries produce the most content, what ratings are most common, and how netflix's library has grown over the years.

---

## dataset

grabbed this from kaggle — [Netflix Movies and TV Shows](https://www.kaggle.com/datasets/shivamb/netflix-shows)

around 8,800 titles with info like type, country, director, rating, duration, genres and when it was added to netflix.

---

## tools

- MySQL Workbench
- Power BI Desktop

---

## questions i looked at

1. how many titles are in the dataset?
2. how many are movies vs tv shows?
3. what's the percentage split between movies and tv shows?
4. what are the most common content ratings?
5. what are the top 10 genres?
6. which countries have the most content on netflix?
7. which countries make both movies and tv shows?
8. who are the top 10 directors on netflix?
9. what's the average movie length?
10. which tv shows have the most seasons?
11. how many titles were added each year?
12. which month sees the most additions?
13. what was added after 2019?
14. how many titles came out each decade?
15. which year had the most releases?

---

## what i found

- netflix has way more movies than tv shows — 69.62% movies vs 30.38% tv shows (6.13K vs 2.68K)
- the US dominates with 2.8K titles, followed by India (1.0K) and the UK (0.4K)
- content additions exploded around 2015 and peaked around 2019-2020
- the 2010s had by far the most releases — 4.2K movies and 1.7K tv shows that decade
- Raul Campos Jr. is the most featured director on netflix
- had some dirty data — a few rows had duration values sitting in the rating column, filtered those out

---

## dashboard

built a one page dashboard in power bi covering:

- total titles, movies and tv shows cards (8.797K total, 6K movies, 3K tv shows)
- line chart showing how titles added grew over the years
- donut chart showing the movies vs tv shows split
- bar chart of top 10 countries by total titles
- stacked bar chart of titles by decade split by type
- top directors by total shows and movies
- year slicer to filter the whole dashboard by year range

---

## files

```
├── netflix.sql              # all the queries
├── netflix_data.csv         # cleaned csv i used to import
├── netflix.pbix   # power bi dashboard
└── README.md
```

---

## how to run it

1. import `netflix_data.csv` into mysql using the table data import wizard
2. open `netflix.sql` in mysql workbench
3. run the queries
4. open `netflix_dashboard.pbix` in power bi desktop to view the dashboard
