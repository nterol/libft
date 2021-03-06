# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nterol <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/11/09 10:37:37 by nterol            #+#    #+#              #
#    Updated: 2017/02/20 21:21:37 by nterol           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = gcc

NAME = libft.a

SRC = ./ft_atoi.c ./ft_putchar.c ./ft_putstr.c ./ft_strcmp.c ./ft_strlen.c\
	  ./ft_swap.c ./ft_tolower.c ./ft_toupper.c ./ft_isdigit.c\
	  ./ft_isalnum.c ./ft_isalpha.c ./ft_isascii.c ./ft_isprint.c\
	  ./ft_isblank.c ./ft_strlen.c ./ft_putchar_fd.c ./ft_putnbr.c\
	  ./ft_putnbr_fd.c ./ft_strcpy.c ./ft_strncpy.c ./ft_strstr.c\
	  ./ft_strnstr.c ./ft_strncmp.c ./ft_strdup.c ./ft_memset.c\
	  ./ft_bzero.c ./ft_memcmp.c ./ft_memmove.c ./ft_memchr.c\
	  ./ft_memcpy.c ./ft_memccpy.c ./ft_itoa.c ./ft_putstr_fd.c\
	  ./ft_putendl.c ./ft_putendl_fd.c ./ft_strcat.c ./ft_strncat.c\
	  ./ft_strlcat.c ./ft_strchr.c ./ft_strrchr.c ./ft_strnew.c\
	  ./ft_memalloc.c ./ft_memdel.c ./ft_strdel.c ./ft_strclr.c\
	  ./ft_striter.c ./ft_striteri.c ./ft_strmap.c ./ft_strmapi.c\
	  ./ft_strequ.c ./ft_strnequ.c ./ft_strsub.c ./ft_strjoin.c\
	  ./ft_strtrim.c ./ft_strsplit.c ./ft_lstnew.c ./ft_lstdelone.c\
	  ./ft_lstdel.c ./ft_lstadd.c ./ft_lstiter.c ./ft_lstmap.c\
	  ./ft_print_bits.c ./ft_swapbits.c ./ft_isupper.c\
	  ./ft_islower.c ./ft_iterative_factorial.c ./ft_lstprint.c\
	  ./ft_lstaddback.c ./ft_putnbrendl.c ./ft_strjoinch.c ./ft_count.c\
	  ./get_next_line.c


OBJ = 	$(SRC:.c=.o)

HEADER = .

CFLAGS = -c -Wall -Wextra -Werror

all : $(NAME)

$(NAME) : $(OBJ)
	@$(CC) $(CFLAGS) $(SRC) -I $(HEADER)
	@ar rc $(NAME) $(OBJ)
	@ranlib $(NAME)
	clear

clean :
	@/bin/rm -rf $(OBJ)
	clear

fclean : clean
	@/bin/rm -f $(NAME)
	clear

re : fclean all

.PHONY : all clean fclean re
