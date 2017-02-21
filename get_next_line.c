/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   get_next_line.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nterol <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/02/08 10:00:23 by nterol            #+#    #+#             */
/*   Updated: 2017/02/20 21:22:01 by nterol           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int				check_n_fill(char **line, char **tmp)
{
	char		*o;
	void		*paris;

	if ((o = ft_strchr(*tmp, CHAR)))
	{
		*line = ft_strsub(*tmp, 0, o - *tmp);
		paris = *tmp;
		*tmp = ft_strdup(o + 1);
		free(paris);
		return (1);
	}
	return (0);
}

int				get_next_line(const int fd, char **line)
{
	int			ret;
	static char	*tmp[FD_SIZE] = {0};
	char		buf[BUFF_SIZE + 1];
	void		*paris;

	if ((fd < 0 || !line || (read(fd, buf, 0) < 0)))
		return (-1);
	!tmp[fd] ? tmp[fd] = ft_strnew(0) : 0;
	*line = NULL;
	if (check_n_fill(line, &tmp[fd]) == 1)
		return (1);
	while ((ret = read(fd, buf, BUFF_SIZE)))
	{
		buf[ret] = '\0';
		paris = tmp[fd];
		tmp[fd] = ft_strjoin(tmp[fd], buf);
		free(paris);
		if (check_n_fill(line, &tmp[fd]) == 1)
			return (1);
	}
	if (ft_strcmp(tmp[fd], ""))
	{
		*line = ft_strdup(tmp[fd]);
		free(tmp[fd]);
		tmp[fd] = NULL;
		return (1);
	}
	return (0);
}
