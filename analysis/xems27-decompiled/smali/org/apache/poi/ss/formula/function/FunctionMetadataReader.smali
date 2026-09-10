.class final Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;
.super Ljava/lang/Object;
.source "FunctionMetadataReader.java"


# static fields
.field private static final DIGIT_ENDING_FUNCTION_NAMES:[Ljava/lang/String;

.field private static final DIGIT_ENDING_FUNCTION_NAMES_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ELLIPSIS:Ljava/lang/String; = "..."

.field private static final EMPTY_BYTE_ARRAY:[B

.field private static final METADATA_FILE_NAME:Ljava/lang/String; = "functionMetadata.txt"

.field private static final SPACE_DELIM_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAB_DELIM_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 44
    const-string v0, "\t"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->TAB_DELIM_PATTERN:Ljava/util/regex/Pattern;

    .line 45
    const-string v0, " "

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->SPACE_DELIM_PATTERN:Ljava/util/regex/Pattern;

    .line 46
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->EMPTY_BYTE_ARRAY:[B

    .line 48
    const-string v1, "LOG10"

    const-string v2, "ATAN2"

    const-string v3, "DAYS360"

    const-string v4, "SUMXMY2"

    const-string v5, "SUMX2MY2"

    const-string v6, "SUMX2PY2"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->DIGIT_ENDING_FUNCTION_NAMES:[Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->DIGIT_ENDING_FUNCTION_NAMES:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->DIGIT_ENDING_FUNCTION_NAMES_SET:Ljava/util/Set;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createRegistry()Lorg/apache/poi/ss/formula/function/FunctionMetadataRegistry;
    .locals 7

    .line 56
    const-class v0, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;

    const-string v1, "functionMetadata.txt"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 57
    .local v0, "is":Ljava/io/InputStream;
    if-eqz v0, :cond_4

    .line 63
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v2

    .line 66
    .local v1, "br":Ljava/io/BufferedReader;
    nop

    .line 67
    new-instance v2, Lorg/apache/poi/ss/formula/function/FunctionDataBuilder;

    const/16 v3, 0x190

    invoke-direct {v2, v3}, Lorg/apache/poi/ss/formula/function/FunctionDataBuilder;-><init>(I)V

    .line 71
    .local v2, "fdb":Lorg/apache/poi/ss/formula/function/FunctionDataBuilder;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, "line":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 73
    nop

    .line 84
    .end local v3    # "line":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 87
    nop

    .line 89
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/function/FunctionDataBuilder;->build()Lorg/apache/poi/ss/formula/function/FunctionMetadataRegistry;

    move-result-object v3

    return-object v3

    .line 75
    .restart local v3    # "line":Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-lt v4, v5, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x23

    if-ne v4, v6, :cond_2

    .line 76
    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 79
    .local v4, "trimLine":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v5, :cond_3

    .line 80
    goto :goto_0

    .line 82
    :cond_3
    invoke-static {v2, v3}, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->processLine(Lorg/apache/poi/ss/formula/function/FunctionDataBuilder;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 83
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "trimLine":Ljava/lang/String;
    goto :goto_0

    .line 85
    :catch_0
    move-exception v3

    .line 86
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 64
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "fdb":Lorg/apache/poi/ss/formula/function/FunctionDataBuilder;
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 65
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 58
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "resource \'functionMetadata.txt\' not found"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static isDash(Ljava/lang/String;)Z
    .locals 4
    .param p0, "codes"    # Ljava/lang/String;

    .line 144
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 145
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2d

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    return v2

    .line 150
    :cond_1
    :goto_0
    return v1
.end method

.method private static parseInt(Ljava/lang/String;)I
    .locals 4
    .param p0, "valStr"    # Ljava/lang/String;

    .line 190
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' could not be parsed as an integer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static parseOperandTypeCode(Ljava/lang/String;)B
    .locals 4
    .param p0, "code"    # Ljava/lang/String;

    .line 154
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 157
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x41

    if-eq v1, v2, :cond_2

    const/16 v2, 0x52

    if-eq v1, v2, :cond_1

    const/16 v2, 0x56

    if-ne v1, v2, :cond_0

    .line 158
    const/16 v0, 0x20

    return v0

    .line 162
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected operand type code \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 159
    :cond_1
    return v0

    .line 160
    :cond_2
    const/16 v0, 0x40

    return v0

    .line 155
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad operand type code format \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' expected single char"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseOperandTypeCodes(Ljava/lang/String;)[B
    .locals 5
    .param p0, "codes"    # Ljava/lang/String;

    .line 122
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 123
    sget-object v0, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->EMPTY_BYTE_ARRAY:[B

    return-object v0

    .line 125
    :cond_0
    invoke-static {p0}, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->isDash(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    sget-object v0, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->EMPTY_BYTE_ARRAY:[B

    return-object v0

    .line 129
    :cond_1
    sget-object v0, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->SPACE_DELIM_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "array":[Ljava/lang/String;
    array-length v1, v0

    .line 131
    .local v1, "nItems":I
    add-int/lit8 v2, v1, -0x1

    aget-object v2, v0, v2

    const-string v3, "..."

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 134
    add-int/lit8 v1, v1, -0x1

    .line 136
    :cond_2
    new-array v2, v1, [B

    .line 137
    .local v2, "result":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 138
    aget-object v4, v0, v3

    invoke-static {v4}, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->parseOperandTypeCode(Ljava/lang/String;)B

    move-result v4

    aput-byte v4, v2, v3

    .line 137
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 140
    .end local v3    # "i":I
    :cond_3
    return-object v2
.end method

.method private static parseReturnTypeCode(Ljava/lang/String;)B
    .locals 1
    .param p0, "code"    # Ljava/lang/String;

    .line 115
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 116
    const/4 v0, 0x0

    return v0

    .line 118
    :cond_0
    invoke-static {p0}, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->parseOperandTypeCode(Ljava/lang/String;)B

    move-result v0

    return v0
.end method

.method private static processLine(Lorg/apache/poi/ss/formula/function/FunctionDataBuilder;Ljava/lang/String;)V
    .locals 17
    .param p0, "fdb"    # Lorg/apache/poi/ss/formula/function/FunctionDataBuilder;
    .param p1, "line"    # Ljava/lang/String;

    .line 94
    move-object/from16 v0, p1

    sget-object v1, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->TAB_DELIM_PATTERN:Ljava/util/regex/Pattern;

    const/4 v2, -0x2

    invoke-virtual {v1, v0, v2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "parts":[Ljava/lang/String;
    array-length v2, v1

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    .line 98
    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-static {v3}, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 99
    .local v3, "functionIndex":I
    const/4 v4, 0x1

    aget-object v12, v1, v4

    .line 100
    .local v12, "functionName":Ljava/lang/String;
    const/4 v5, 0x2

    aget-object v5, v1, v5

    invoke-static {v5}, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 101
    .local v13, "minParams":I
    const/4 v5, 0x3

    aget-object v5, v1, v5

    invoke-static {v5}, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 102
    .local v14, "maxParams":I
    const/4 v5, 0x4

    aget-object v5, v1, v5

    invoke-static {v5}, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->parseReturnTypeCode(Ljava/lang/String;)B

    move-result v15

    .line 103
    .local v15, "returnClassCode":B
    const/4 v5, 0x5

    aget-object v5, v1, v5

    invoke-static {v5}, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->parseOperandTypeCodes(Ljava/lang/String;)[B

    move-result-object v16

    .line 105
    .local v16, "parameterClassCodes":[B
    const/4 v5, 0x7

    aget-object v5, v1, v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    .line 107
    .local v11, "hasNote":Z
    :goto_0
    invoke-static {v12}, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->validateFunctionName(Ljava/lang/String;)V

    .line 109
    move-object/from16 v4, p0

    move v5, v3

    move-object v6, v12

    move v7, v13

    move v8, v14

    move v9, v15

    move-object/from16 v10, v16

    invoke-virtual/range {v4 .. v11}, Lorg/apache/poi/ss/formula/function/FunctionDataBuilder;->add(ILjava/lang/String;IIB[BZ)V

    .line 111
    return-void

    .line 96
    .end local v3    # "functionIndex":I
    .end local v11    # "hasNote":Z
    .end local v12    # "functionName":Ljava/lang/String;
    .end local v13    # "minParams":I
    .end local v14    # "maxParams":I
    .end local v15    # "returnClassCode":B
    .end local v16    # "parameterClassCodes":[B
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad line format \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' - expected 8 data fields"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static validateFunctionName(Ljava/lang/String;)V
    .locals 5
    .param p0, "functionName"    # Ljava/lang/String;

    .line 170
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 171
    .local v0, "len":I
    add-int/lit8 v1, v0, -0x1

    .line 172
    .local v1, "ix":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 173
    return-void

    .line 175
    :cond_0
    :goto_0
    if-ltz v1, :cond_2

    .line 176
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 177
    goto :goto_1

    .line 179
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 181
    :cond_2
    :goto_1
    sget-object v2, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->DIGIT_ENDING_FUNCTION_NAMES_SET:Ljava/util/Set;

    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 182
    return-void

    .line 184
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid function name \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' (is footnote number incorrectly appended)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
