/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_realloc                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ddemers <ddemers@student.42quebec.com>     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/03/03 14:45:08 by ddemers           #+#    #+#             */
/*   Updated: 2023/03/03 15:11:52 by ddemers          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void *ft_realloc(void *ptr, size_t size)
{
	void * ret_ptr;

	ret_ptr = malloc(size);
	if (!ret_ptr)
		return (NULL);
	ft_memcpy(ret_ptr, ptr, size);
	free(ptr);
	ptr = NULL;
	return (ret_ptr);
}