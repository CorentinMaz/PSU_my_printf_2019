##
## EPITECH PROJECT, 2019
## CPool_bistro-matic_2019
## File description:
## Makefile
##

SRC	=	my_printf.c		\
		converting.c	\
		specific.c		\
		lib/my/my_putchar.c	\
		lib/my/my_put_nbr.c	\
		lib/my/my_put_pos.c	\
		lib/my/my_strlen.c	\
		lib/my/my_putstr.c	\
		lib/my/my_getnbr.c	\
		lib/my/my_revstr.c	\
		lib/my/my_strcpy.c

CC	=	gcc -W -Wall -Wextra -g3

AR	=	ar rc

O	=	*.o

OBJ	=	$(SRC:.c=.o)

NAME	=	libmy.a

all:	$(NAME)

$(NAME):	$(OBJ)
	$(AR) $(NAME) $(OBJ)

clean:
	rm -f $(OBJ)

fclean:	clean
	rm -f $(NAME)

re:	fclean all

.PHONY: all re clean fclean