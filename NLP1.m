clc; clear; close all;
text = 'Lorem, ipsum dolor ipsum amet consectetur adipisicing elit. ipsum dolor ipsum amet consectetur mollitia temporibus tempora accusantium ipsum dolor ipsum amet expedita recusandae eaque quam harum natus similique sit?';
str = 'ipsum dolor ipsum amet';
% prepate texts (tokenizeDucument method removes the duplicated tokens)
text = lower(text);
str= lower(str);
text = erasePunctuation(text);
str = erasePunctuation(str);
text = strsplit(text, ' ');
str = strsplit(str, ' ');
text = cell2mat(text);
str = cell2mat(str);

matched = false;
matchCount = 0;

for i = 1 : size(text, 2)
    for j = 1 : size(str, 2)
        if text(i+j-1) == str(j)
            matched = true;
        else 
            matched = false;
            break;
        end
    end
    if matched == true
        matchCount = matchCount + 1;
    end
end

clear i j matched

matchCount
