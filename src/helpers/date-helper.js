import moment from 'moment'

export function formatDate (date) {
  return moment(date).format('D MMMM YYYY')
}

export function getMonth (date) {
  return moment(date).format('MM')
}

export function getYear (date) {
  return moment(date).format('YYYY')
}
