Library	=	libftgnl
SRC		= 	get_next_line \
			get_next_line_utils \

CC		= 	cc
FLAGS	=	-Wall -Wextra -Werror
OUTN	=	$(Library).a
CFILES	=	$(SRC:%=%.c)
OFILES	=	$(SRC:%=%.o)
NAME	=	$(OUTN)
$(NAME):
		$(CC) $(FLAGS) -c $(CFILES) -I./
		ar -rc $(OUTN) $(OFILES)
all:	$(NAME)
clean:
		rm -f (OFILES)
fclean: clean
		rm -f $(NAME)
re: fclean all

.PHONY: all, clean, fclean, re