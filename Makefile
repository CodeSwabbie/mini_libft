Library		= libft
SRC	= 	ft_isalpha \
		ft_isdigit \
		ft_isascii \
		ft_isalnum \
		ft_isprint \
		ft_strlen \
		ft_toupper \
		ft_tolower \
		ft_memcpy \
		ft_strnstr \
		ft_memset \
		ft_memmove \
		ft_bzero \
		ft_strlcpy \
		ft_strchr \
		ft_strrchr \
		ft_strncmp \
		ft_strlcat \
		ft_memchr \
		ft_memcmp \
		ft_atoi \
		ft_calloc \
		ft_strdup \
		ft_substr \
		ft_strjoin \
		ft_strtrim \
		ft_split \
		ft_itoa \
		ft_strmapi \
		ft_striteri \
		ft_putchar_fd \
		ft_putstr_fd \
		ft_putendl_fd \
		ft_putnbr_fd \
		get_next_line \
		ft_print_char \
		ft_print_str \
		ft_print_percent \
		ft_print_nbr \
		ft_print_hex \
		ft_print_unsigned \
		ft_print_ptr \
		ft_printf \

Compiler	= cc
Flags	= -Wall -Wextra -Werror
OUTN	= $(Library).a
CFILES	= $(SRC:%=%.c)
OFILES	= $(SRC:%=%.o)
NAME	= $(OUTN)

$(NAME):
		$(Compiler) $(Flags) -c $(CFILES) -I./
		ar -rc $(OUTN) $(OFILES)

all: $(NAME)

clean: 
		rm -f $(OFILES)

fclean: clean
		rm -f $(NAME)

re: fclean all

.PHONY: all, clean, fclean, re