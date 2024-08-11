-- Список файлов для отправки
set filesToSend to {"/Users/sgzh1/iMessage/pukane-25.mp3", "/Users/sgzh1/iMessage/pukane-9.mp3"}

-- Список контактов (телефонные номера или Apple ID)
set contacts to {"+7 (981) 884-05-10"} -- убрал пробелы и скобки

-- Функция для отправки файлов одному контакту
on sendFilesToContact(contact, fileList)
    tell application "Messages"
        set targetService to 1st service whose service type = iMessage
        set targetBuddy to buddy contact of targetService
        repeat with filePath in fileList
            -- Отправляем файл, используя POSIX путь
            send POSIX file filePath to targetBuddy
            delay 5 -- добавляем небольшую задержку
        end repeat
    end tell
end sendFilesToContact

-- Отправка файлов каждому контакту в списке
repeat with contact in contacts
    sendFilesToContact(contact, filesToSend)
end repeat
