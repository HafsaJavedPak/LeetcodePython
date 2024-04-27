% TASK 1

regID = "22pwcse9988";
num = 0;
for i = regID:
    if i not in [0,1,2,3,4,5,6,7,8,9]:
        num = num*10 + str2num(i);


printf("The number is %s\n",num);

% TASK 2

num1 = num % 100;
num2 = (num/100) % 100;
num3 = (num/100) % 100;

printf("1st number is %s\n",num1);
printf("2nd number is %s\n",num2);
printf("3rd number is %s\n",num3);

a = int(num1/10)  * x + (num1%10);
b = int(num2/10)  * x + (num2%10);
c = int(num3/10)  * x + (num3%10);

x = linspace(-10,10,100);

figure 1;
subplot(1,2,1);
plot(x,a);
subplot(1,2,2);
plot(x,b);
subplot(1,2,3);
plot(x,c);

% TASK 3

x = linspace(-15,15,100);
figure 2;
subplot(1,2,1);
plot(x,a);
subplot(1,2,2);
plot(x,b);
subplot(1,2,3);
plot(x,c);


----
% TASK 1
regID = '22pwcse9988';
num = 0;

% Extract numeric digits from the registration ID
for i = 1:length(regID)
  if ismember(regID(i), '0123456789')
    num = num * 10 + str2num(regID(i));
  end
end

fprintf('The number is %d\n', num);

% TASK 2
num1 = mod(num, 100);
num2 = mod(floor(num/100), 100);
num3 = floor(num / 10000);  % Integer division for first digit

x = linspace(-10, 10, 100);

% TASK 3: Plot using subplots
figure(1);
subplot(1, 2, 1);
plot(x, num1 + 10*x);
title('1st number (y = x1 + 10x)');
subplot(1, 2, 2);
plot(x, num2 + 10*x);
title('2nd number (y = x2 + 10x)');

% Clear the remaining subplot (optional)
subplot(1, 2, 3);
cla;

suptitle('Plots of Extracted Numbers and Linear Relationships');
tightfig;

% TASK 3 (alternative): Plot on the same figure
figure(2);
plot(x, num1 + 10*x);
hold on;
plot(x, num2 + 10*x);
legend('1st number', '2nd number');
title('Extracted Numbers and Linear Relationships');
hold off;

[
    {
        "speedch"  :"noun",
        "definitui": "sfd"
    }
    ,
    {
        "speech" : "noun",
        "deifn"
    }
]
