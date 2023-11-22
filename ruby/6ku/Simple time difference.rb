# frozen_string_literal: true

# https://www.codewars.com/kata/5b76a34ff71e5de9db0000f2/train/ruby
require 'time'

def solve(arr)
  result = []
  arr = arr.uniq.sort
  arr.each_index do |i|
    result << Time.at((Time.parse(arr[i]) - Time.parse(arr[i - 1])) - 1).utc.strftime('%H:%M')
  end
  result.max
end

p solve(['00:00', '00:00', '00:01', '00:02', '00:02', '00:05', '00:06', '00:08', '00:11', '00:11', '00:13', '00:16', '00:18', '00:22', '00:25', '00:29', '00:29', '00:30', '00:30', '00:33', '00:34', '00:35', '00:36', '00:37', '00:37', '00:38', '00:39', '00:39', '00:42', '00:43', '00:47', '00:47', '00:48', '00:48', '00:49', '00:49', '00:50', '00:51', '00:51', '00:51', '00:51', '00:52', '00:53', '00:55', '00:55', '00:56', '00:58', '00:59', '01:03', '01:04', '01:06', '01:10', '01:10', '01:10', '01:11', '01:12', '01:13', '01:13', '01:14', '01:15', '01:19', '01:22', '01:23', '01:25', '01:25', '01:25', '01:27', '01:27', '01:27', '01:28', '01:28', '01:31', '01:31', '01:31', '01:37', '01:38', '01:38', '01:39', '01:39', '01:39', '01:40', '01:41', '01:43', '01:43', '01:43', '01:44', '01:45', '01:46', '01:47', '01:51', '01:52', '01:54', '01:55', '01:57', '02:06', '02:06', '02:07', '02:10', '02:12', '02:14', '02:14', '02:15', '02:17', '02:18', '02:18', '02:20', '02:21', '02:23', '02:23', '02:24', '02:24', '02:27', '02:29', '02:31', '02:31', '02:31', '02:32', '02:33', '02:34', '02:36', '02:41', '02:43', '02:43', '02:43', '02:45', '02:45', '02:46', '02:49', '02:49', '02:50', '02:50', '02:51', '02:53', '02:54', '02:54', '02:55', '02:56', '03:01', '03:05', '03:05', '03:06', '03:06', '03:10', '03:11', '03:12', '03:15', '03:17', '03:18', '03:18', '03:18', '03:19', '03:20', '03:20', '03:21', '03:23', '03:23', '03:25', '03:26', '03:28', '03:31', '03:33', '03:33', '03:36', '03:37', '03:39', '03:45', '03:45', '03:48', '03:49', '03:49', '03:49', '03:57', '03:58', '03:58', '04:00', '04:01', '04:01', '04:02', '04:03', '04:05', '04:05', '04:05', '04:06', '04:06', '04:06', '04:09', '04:09', '04:17', '04:20', '04:20', '04:22', '04:25', '04:26', '04:26', '04:28', '04:28', '04:31', '04:33', '04:34', '04:38', '04:39', '04:40', '04:41', '04:43', '04:43', '04:43', '04:45', '04:46', '04:48', '04:53', '04:54', '04:56', '04:56', '04:59', '05:02', '05:03', '05:06', '05:06', '05:09', '05:10', '05:12', '05:12', '05:13', '05:14', '05:14', '05:15', '05:15', '05:18', '05:21', '05:24', '05:24', '05:26', '05:26', '05:31', '05:32', '05:35', '05:36', '05:43', '05:43', '05:46', '05:48', '05:51', '05:55', '05:59', '05:59', '05:59', '06:01', '06:04', '06:09', '06:09', '06:10', '06:10', '06:13', '06:14', '06:14', '06:15', '06:15', '06:16', '06:16', '06:17', '06:17', '06:20', '06:22', '06:23', '06:27', '06:27', '06:31', '06:35', '06:36', '06:37', '06:38', '06:40', '06:40', '06:41', '06:48', '06:48', '06:49', '06:53', '06:55', '06:56', '06:56', '06:57', '06:58', '07:02', '07:03', '07:04', '07:06', '07:06', '07:06', '07:10', '07:12', '07:12', '07:15', '07:16', '07:17', '07:21', '07:22', '07:29', '07:31', '07:31', '07:33', '07:34', '07:36', '07:37', '07:40', '07:40', '07:43', '07:46', '07:47', '07:47', '07:48', '07:50', '07:50', '07:53', '07:54', '07:56', '07:57', '07:59', '08:03', '08:04', '08:05', '08:05', '08:06', '08:09', '08:10', '08:10', '08:11', '08:12', '08:14', '08:14', '08:17', '08:18', '08:20', '08:22', '08:23', '08:24', '08:25', '08:29', '08:29', '08:30', '08:30', '08:30', '08:34', '08:35', '08:36', '08:38', '08:38', '08:42', '08:42', '08:44', '08:44', '08:44', '08:45', '08:46', '08:47', '08:50', '08:52', '08:53', '08:54', '08:54', '08:57', '08:58', '09:01', '09:01', '09:06', '09:06', '09:11', '09:12', '09:14', '09:15', '09:16', '09:17', '09:18', '09:18', '09:21', '09:21', '09:25', '09:25', '09:27', '09:29', '09:29', '09:29', '09:35', '09:35', '09:36', '09:37', '09:40', '09:40', '09:41', '09:41', '09:44', '09:44', '09:47', '09:48', '09:50', '09:52', '09:55', '09:55', '09:57', '10:02', '10:03', '10:03', '10:06', '10:06', '10:07', '10:07', '10:08', '10:09', '10:15', '10:16', '10:20', '10:21', '10:23', '10:25', '10:26', '10:26', '10:31', '10:31', '10:34', '10:35', '10:36', '10:37', '10:39', '10:42', '10:42', '10:43', '10:44', '10:45', '10:47', '10:49', '10:52', '10:53', '10:56', '10:57', '10:57', '10:59', '11:00', '11:01', '11:02', '11:03', '11:05', '11:06', '11:07', '11:09', '11:09', '11:10', '11:11', '11:11', '11:11', '11:13', '11:15', '11:18', '11:20', '11:21', '11:22', '11:23', '11:23', '11:24', '11:26', '11:26', '11:27', '11:28', '11:32', '11:35', '11:35', '11:38', '11:39', '11:41', '11:43', '11:44', '11:45', '11:49', '11:49', '11:50', '11:52', '11:53', '11:53', '11:58', '11:59', '12:02', '12:02', '12:03', '12:04', '12:05', '12:05', '12:05', '12:08', '12:10', '12:10', '12:11', '12:11', '12:12', '12:13', '12:14', '12:15', '12:16', '12:16', '12:17', '12:19', '12:19', '12:20', '12:21', '12:22', '12:22', '12:22', '12:23', '12:23', '12:25', '12:25', '12:29', '12:32', '12:33', '12:35', '12:35', '12:36', '12:38', '12:41', '12:43', '12:44', '12:44', '12:45', '12:46', '12:53', '12:54', '12:55', '12:56', '12:56', '12:57', '12:58', '12:58', '13:00', '13:00', '13:01', '13:01', '13:02', '13:03', '13:06', '13:08', '13:09', '13:09', '13:11', '13:12', '13:12', '13:14', '13:15', '13:19', '13:19', '13:20', '13:23', '13:26', '13:30', '13:30', '13:30', '13:31', '13:34', '13:35', '13:36', '13:41', '13:43', '13:44', '13:44', '13:46', '13:47', '13:49', '13:50', '13:50', '13:51', '13:55', '13:58', '13:58', '14:01', '14:02', '14:05', '14:06', '14:06', '14:07', '14:09', '14:11', '14:12', '14:12', '14:12', '14:15', '14:17', '14:17', '14:18', '14:18', '14:18', '14:22', '14:22', '14:23', '14:25', '14:26', '14:26', '14:26', '14:27', '14:28', '14:28', '14:32', '14:34', '14:34', '14:34', '14:35', '14:35', '14:40', '14:40', '14:43', '14:43', '14:44', '14:45', '14:46', '14:48', '14:49', '14:50', '14:52', '14:52', '14:53', '14:53', '14:53', '14:55', '14:56', '14:57', '14:59', '15:00', '15:04', '15:05', '15:07', '15:10', '15:11', '15:11', '15:12', '15:13', '15:16', '15:18', '15:18', '15:19', '15:24', '15:25', '15:26', '15:30', '15:31', '15:33', '15:34', '15:34', '15:37', '15:38', '15:40', '15:44', '15:45', '15:46', '15:46', '15:46', '15:48', '15:48', '15:48', '15:50', '15:50', '15:51', '15:52', '15:56', '15:58', '15:59', '16:00', '16:02', '16:02', '16:04', '16:07', '16:10', '16:11', '16:12', '16:13', '16:18', '16:18', '16:19', '16:22', '16:23', '16:25', '16:26', '16:29', '16:29', '16:32', '16:34', '16:34', '16:36', '16:37', '16:37', '16:38', '16:38', '16:39', '16:41', '16:41', '16:42', '16:44', '16:45', '16:46', '16:47', '16:47', '16:50', '16:53', '16:54', '16:54', '16:56', '16:58', '17:00', '17:01', '17:01', '17:02', '17:03', '17:05', '17:06', '17:06', '17:09', '17:09', '17:09', '17:12', '17:14', '17:17', '17:17', '17:18', '17:19', '17:20', '17:24', '17:25', '17:29', '17:29', '17:29', '17:31', '17:32', '17:32', '17:33', '17:34', '17:35', '17:36', '17:37', '17:41', '17:42', '17:45', '17:46', '17:46', '17:48', '17:49', '17:50', '17:52', '17:53', '17:54', '17:55', '17:56', '17:57', '17:57', '17:59', '17:59', '18:06', '18:06', '18:09', '18:09', '18:10', '18:12', '18:13', '18:15', '18:16', '18:16', '18:17', '18:18', '18:19', '18:20', '18:23', '18:26', '18:26', '18:28', '18:30', '18:30', '18:31', '18:32', '18:32', '18:33', '18:36', '18:37', '18:39', '18:41', '18:43', '18:44', '18:46', '18:46', '18:46', '18:47', '18:48', '18:49', '18:50', '18:53', '18:57', '18:57', '19:00', '19:01', '19:03', '19:07', '19:12', '19:15', '19:16', '19:18', '19:20', '19:22', '19:22', '19:23', '19:24', '19:25', '19:26', '19:27', '19:27', '19:27', '19:28', '19:29', '19:31', '19:31', '19:34', '19:35', '19:35', '19:35', '19:38', '19:39', '19:40', '19:41', '19:42', '19:43', '19:44', '19:46', '19:49', '19:50', '19:52', '19:53', '19:53', '19:56', '19:56', '19:58', '20:00', '20:01', '20:03', '20:03', '20:04', '20:05', '20:06', '20:06', '20:09', '20:10', '20:10', '20:11', '20:11', '20:12', '20:13', '20:16', '20:16', '20:17', '20:21', '20:21', '20:25', '20:25', '20:26', '20:26', '20:28', '20:28', '20:29', '20:29', '20:30', '20:30', '20:31', '20:35', '20:36', '20:37', '20:38', '20:39', '20:42', '20:43', '20:43', '20:43', '20:46', '20:48', '20:48', '20:49', '20:52', '20:53', '20:54', '20:56', '20:57', '20:57', '21:01', '21:03', '21:04', '21:07', '21:09', '21:09', '21:10', '21:10', '21:14', '21:14', '21:14', '21:18', '21:18', '21:20', '21:22', '21:25', '21:25', '21:25', '21:25', '21:26', '21:29', '21:32', '21:38', '21:39', '21:39', '21:40', '21:42', '21:44', '21:46', '21:47', '21:48', '21:48', '21:53', '21:55', '21:55', '21:55', '21:59', '21:59', '21:59', '22:00', '22:00', '22:00', '22:01', '22:03', '22:06', '22:06', '22:07', '22:07', '22:10', '22:11', '22:14', '22:14', '22:16', '22:18', '22:22', '22:23', '22:24', '22:25', '22:28', '22:28', '22:30', '22:32', '22:32', '22:34', '22:34', '22:37', '22:37', '22:39', '22:45', '22:45', '22:46', '22:53', '22:54', '22:55', '22:57', '22:57', '22:58', '22:59', '22:59', '23:00', '23:09', '23:09', '23:09', '23:09', '23:12', '23:12', '23:14', '23:14', '23:16', '23:17', '23:17', '23:18', '23:19', '23:21', '23:22', '23:23', '23:23', '23:24', '23:24', '23:30', '23:31', '23:31', '23:35', '23:35', '23:36', '23:36', '23:37', '23:38', '23:42', '23:45', '23:48', '23:50', '23:50', '23:53', '23:56', '23:58', '23:59', '23:59']) # "11:40"