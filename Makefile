# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ddemers <ddemers@student.42quebec.com>     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/20 02:06:17 by ddemers           #+#    #+#              #
#    Updated: 2023/03/03 17:50:50 by ddemers          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
CC = gcc
CFLAGS = -Wall -Wextra -Werror
src =		ft_atoi.c\
			ft_bzero.c\
			ft_calloc.c\
			ft_isalnum.c\
			ft_isalpha.c\
			ft_isascii.c\
			ft_isdigit.c\
			ft_isprint.c\
			ft_memchr.c\
			ft_memcmp.c\
			ft_memcpy.c\
			ft_memmove.c\
			ft_memset.c\
			ft_strchr.c\
			ft_strncmp.c\
			ft_strdup.c\
			ft_strlcat.c\
			ft_strlcpy.c\
			ft_strlen.c\
			ft_strnstr.c\
			ft_strrchr.c\
			ft_tolower.c\
			ft_toupper.c\
			ft_substr.c\
			ft_strjoin.c\
			ft_strtrim.c\
			ft_itoa.c\
			ft_putchar_fd.c\
			ft_putstr_fd.c\
			ft_putendl_fd.c\
			ft_putnbr_fd.c\
			ft_strmapi.c\
			ft_striteri.c\
			ft_split.c\
			ft_strcmp.c \
			ft_free.c \
			double_linked_list.c \
			ft_realloc.c \
			count_double_array.c
bonus =		ft_lstnew.c\
			ft_lstadd_front.c\
			ft_lstsize.c\
			ft_lstlast.c\
			ft_lstadd_back.c\
			ft_lstdelone.c\
			ft_lstclear.c\
			ft_lstclear.c\
			ft_lstiter.c
OBJS 	= ${src:.c=.o}
BONUS_OBJS = ${bonus:.c=.o}
LIBC 	= ar rcs
REMOVE	= rm -f

$(NAME): ${OBJS}
		 ${LIBC} $(NAME) ${OBJS}

all:$(NAME)

clean :
		${REMOVE} ${OBJS} 
		${REMOVE} ${BONUS_OBJS}

fclean :clean
		${REMOVE} $(NAME)

bonus : ${OBJS} ${BONUS_OBJS}
			${LIBC} ${NAME} ${OBJS} ${BONUS_OBJS}


re:fclean all

.PHONY: all clean fclean re bonus