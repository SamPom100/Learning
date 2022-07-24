for FILE in *; do 
if [[ $FILE == *.go ]]; then
    #go build $FILE
    #./${FILE%???}
    #rm ${FILE%???}
    echo $FILE
fi 
done

go build learn.go worker.go
./learn
rm learn