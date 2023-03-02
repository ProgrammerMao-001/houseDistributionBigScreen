import Dayjs from 'dayjs'

export function formatDateFilter(date, formate) {
    if (date !== '' && date !== 'undefined') {
        return Dayjs(date).format(formate)
    } else {
        return ''
    }
}

export default { formatDateFilter }
