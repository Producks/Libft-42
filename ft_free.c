/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_free.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ddemers <ddemers@student.42quebec.com>     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/02/28 09:47:57 by ddemers           #+#    #+#             */
/*   Updated: 2023/03/03 21:19:07 by ddemers          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_free(char **str)
{
	int	index;

	index = 0;
	if (!str)
		return (NULL);
	while (str[index])
		free(str[index++]);
	free (str);
	return (NULL);
}