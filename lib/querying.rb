def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT
    b.title,
    b.year
  FROM books AS b
  JOIN series AS s ON b.series_id = s.id
  WHERE s.id = 1
  GROUP BY 2;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT
    name,
    motto
  FROM characters
  ORDER BY LENGTH(motto) DESC
  LIMIT 1"
end


def select_value_and_count_of_most_prolific_species
  "SELECT
    species,
    COUNT(id)
  FROM characters
  GROUP BY 1
  ORDER BY 1 DESC
  LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT
    a.name,
    sg.name
  FROM authors AS a
  JOIN series AS s ON a.id = s.author_id
  JOIN subgenres AS sg ON s.subgenre_id = sg.id;"
end

def select_series_title_with_most_human_characters
  "SELECT
    s.title
  FROM series AS s
  JOIN characters AS c ON s.id = c.series_id
  WHERE c.species = 'human'
  GROUP BY 1
  ORDER BY COUNT(c.id) DESC
  LIMIT 1;"
  # selects the series title with the most characters that are the species "human"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT
    c.name,
    COUNT(cb.book_id)
  FROM character_books AS cb
  JOIN characters AS c ON cb.character_id = c.id
  JOIN books AS b ON cb.book_id = b.id
  GROUP BY 1
  ORDER BY 2 DESC;"
end
