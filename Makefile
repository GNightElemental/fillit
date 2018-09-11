# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rhallste <rhallste@student.42.us.org>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/09/18 09:37:14 by rhallste          #+#    #+#              #
#    Updated: 2018/09/11 10:46:50 by sjuery           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		= 	fillit
LIBNAME		=	srcs/libft.a

CC			=	gcc
CFLAGS		=	-Wall -Werror -Wextra

LIBLIST		=	srcs/ft_bzero				\
				srcs/ft_free_2d_array		\
				srcs/ft_memalloc			\
				srcs/ft_memset				\
				srcs/ft_putchar				\
				srcs/ft_putchar_fd			\
				srcs/ft_putstr				\
				srcs/ft_putstr_fd			\
				srcs/ft_strcpy				\
				srcs/ft_strdup				\
				srcs/ft_strsub				\
				srcs/ft_strlen				\
				srcs/ft_strncat				\
				srcs/ft_strncpy				\
				srcs/ft_strnew				\
				srcs/ft_swap

MAINLIST	=	srcs/validate_input			\
				srcs/tetri_split			\
				srcs/read_input				\
				srcs/coords					\
				srcs/main					\
				srcs/backtracking			\
				srcs/finder

LIBSRCS		=	$(addsuffix .c, $(LIBLIST))
LIBOBJS		=	$(addsuffix .o, $(LIBLIST))

MAINSRCS	=	$(addsuffix .c, $(MAINLIST))
MAINOBJS	=	$(addsuffix .o, $(MAINLIST))

all: $(NAME)

$(LIBOBJS): $(LIBSRCS)

$(MAINOBJS): $(MAINSRCS)

$(LIBNAME): $(LIBOBJS)
	ar rcs $(LIBNAME) $(LIBOBJS)

$(NAME): $(LIBNAME) $(MAINOBJS)
	$(CC) $(CFLAGS) $(MAINOBJS) $(LIBNAME) -o $(NAME)

clean:
	@rm -rf $(MAINOBJS) $(LIBOBJS) $(TESTOBJS)

fclean: clean
	@rm -rf $(NAME) $(LIBNAME) t

re: fclean all

.SILENT: $(LIBOBJS) $(MAINOBJS)
