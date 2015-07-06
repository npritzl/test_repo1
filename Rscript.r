#important functions
str() #structure
head() #first 6 terms
class() #class of object
help() #info
rm() #remove object
summary() #summary
names() #col titles
ls() #objects
c() #add to vector
cbind() #add columns
rbind() #add rows
attributes() #all attributes of an object
as."data type"(object) #converts types to other types
table() #counts how many of each level
read.table(file, header, sep, ...) #file = file name; header = true if first line is just a header; sep = what separates the data)
read.csv(x) #only difference is sep=',' instead of sep=' '
read.xlsx(file, sheetIndex, header) #reading excel files
readLines()
data.base(dataframe)  #create database (any data types)
matrix(dataframe, nrow, ncol) #create matrix (same data types)
which(boolean) #returns indices that are TRUE
split(object, splitter)
summaryRprof() #evaluate where time is being spent
download.file(fileURL, destfile) #downloading from internet
order(col, col, ...), #sort data by column
arrange(dataframe, var, var, ...) #same as order
quantile(col, probs) #view quantiles of a data set
sum(boolean) #counts true values in table
any(boolean) #true if there is one
all(boolean) #true if all are
xtabs(Freq ~ col + col +..., dataframe) #counts frequency of each related col
ftable(xtabs()) #for multiple compared cols
seq(min, max, by=) #start at min end at max increase by  "by"
ifelse(boolean, trueVal, falseVal) #if else statement
cut2(col, g) #gives amount of entries in each of the "g" quantiles, use table() to show
melt(data, id=, measure=)
dcast(data, col1 ~ col2) #gives amount of col2's for each col1
ddply()

#GETTING A DATA BASE
db <- dbConnect(drv=SQLite(), dbname="C:\\Users\\Nate\\My Documents\\ValidateHealth\\advanced_business_analytics.db")
dbListTables(db)
 
#WRITING TABLES INTO SQLITE
dbWriteTable(conn=db, name="Test", value=df, overwrite=TRUE)

#DISCONNECT
dbDisconnect(conn=db)

#GETTING ACCESS TO PACKAGES
install.packages() #installs package
requre() #loads package

#LOAD ALL TABLES
tabs <- dbListTables(db)
for(i in 1:length(tabs)) {assign(tabs[i], dbGetQuery(db, paste0("SELECT * FROM ", tabs[i])))}

#LINEAR REGRESSION
meps_reg <- lm(formula = "outcomeVar"~"predictorVars", data = MEPS)
meps_reg2 <- stepAIC(meps_reg, direction = "both")

#GGPLOT
ggplot(data = df, aes(x =, y =, fill = )) + geom_"type"()
  
#PREDICTING USING MODEL
predict(object = "model", newdata = "data being tested")

#TESTING LOG MODEL
table(diabetes$type"actual", "predicted in binary")
 
#Trees 
model <- rpart(formula = factor(type)~.-sample, data = diabetes, control = rpart.control(cp = .05))
rpart.plot(model)

#PRCOMP
scaleData <- scale(data)
prcomp(scaleData)

#GLM
model1 <- glm(formula = factor(type)~bmi+skin, family = binomial(link = "logit"), data = diabetes)

#DATES
yrmon <- yearmon(co2$time"time")

#TIME SERIES
ts <- xts(order.by = yrmon"date object", x = co2$co2, frequency = 12)
cool <- stl(ts, "periodic") #litterly put in "periodic"

model <- arima(ts0, order = c(12, 0, 0), method = "ML")