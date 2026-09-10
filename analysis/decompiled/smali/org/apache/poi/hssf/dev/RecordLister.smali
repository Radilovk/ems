.class public Lorg/apache/poi/hssf/dev/RecordLister;
.super Ljava/lang/Object;
.source "RecordLister.java"


# instance fields
.field file:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method private static byteToHex(B)Ljava/lang/String;
    .locals 4
    .param p0, "b"    # B

    .prologue
    .line 157
    move v0, p0

    .line 158
    .local v0, "i":I
    if-gez v0, :cond_0

    .line 159
    add-int/lit16 v0, v0, 0x100

    .line 161
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "s":Ljava/lang/String;
    const/16 v2, 0x10

    if-ge v0, v2, :cond_1

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 165
    .end local v1    # "s":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method private static formatData([B)Ljava/lang/String;
    .locals 5
    .param p0, "data"    # [B

    .prologue
    const/16 v4, 0x20

    .line 122
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    .line 123
    :cond_0
    const-string v2, ""

    .line 154
    :goto_0
    return-object v2

    .line 126
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 127
    .local v1, "s":Ljava/lang/StringBuffer;
    array-length v2, p0

    const/16 v3, 0x9

    if-le v2, v3, :cond_3

    .line 128
    const/4 v2, 0x0

    aget-byte v2, p0, v2

    invoke-static {v2}, Lorg/apache/poi/hssf/dev/RecordLister;->byteToHex(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 130
    const/4 v2, 0x1

    aget-byte v2, p0, v2

    invoke-static {v2}, Lorg/apache/poi/hssf/dev/RecordLister;->byteToHex(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 132
    const/4 v2, 0x2

    aget-byte v2, p0, v2

    invoke-static {v2}, Lorg/apache/poi/hssf/dev/RecordLister;->byteToHex(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 134
    const/4 v2, 0x3

    aget-byte v2, p0, v2

    invoke-static {v2}, Lorg/apache/poi/hssf/dev/RecordLister;->byteToHex(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 137
    const-string v2, " .... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 140
    array-length v2, p0

    add-int/lit8 v2, v2, -0x4

    aget-byte v2, p0, v2

    invoke-static {v2}, Lorg/apache/poi/hssf/dev/RecordLister;->byteToHex(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 142
    array-length v2, p0

    add-int/lit8 v2, v2, -0x3

    aget-byte v2, p0, v2

    invoke-static {v2}, Lorg/apache/poi/hssf/dev/RecordLister;->byteToHex(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 144
    array-length v2, p0

    add-int/lit8 v2, v2, -0x2

    aget-byte v2, p0, v2

    invoke-static {v2}, Lorg/apache/poi/hssf/dev/RecordLister;->byteToHex(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 146
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, p0, v2

    invoke-static {v2}, Lorg/apache/poi/hssf/dev/RecordLister;->byteToHex(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 148
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 149
    aget-byte v2, p0, v0

    invoke-static {v2}, Lorg/apache/poi/hssf/dev/RecordLister;->byteToHex(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static formatSID(I)Ljava/lang/String;
    .locals 7
    .param p0, "sid"    # I

    .prologue
    const/16 v6, 0x30

    const/4 v5, 0x4

    .line 83
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "hex":Ljava/lang/String;
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "dec":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 87
    .local v3, "s":Ljava/lang/StringBuffer;
    const-string v4, "0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 89
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 88
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    :goto_1
    if-ge v2, v5, :cond_1

    .line 95
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 94
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 97
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static formatSize(I)Ljava/lang/String;
    .locals 7
    .param p0, "size"    # I

    .prologue
    const/16 v6, 0x30

    const/4 v5, 0x3

    .line 103
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "hex":Ljava/lang/String;
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "dec":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 107
    .local v3, "s":Ljava/lang/StringBuffer;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 108
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 107
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    :goto_1
    if-ge v2, v5, :cond_1

    .line 114
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 113
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 116
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 175
    array-length v2, p0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    aget-object v2, p0, v4

    const-string v3, "--help"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 179
    :try_start_0
    new-instance v1, Lorg/apache/poi/hssf/dev/RecordLister;

    invoke-direct {v1}, Lorg/apache/poi/hssf/dev/RecordLister;-><init>()V

    .line 181
    .local v1, "viewer":Lorg/apache/poi/hssf/dev/RecordLister;
    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/dev/RecordLister;->setFile(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v1}, Lorg/apache/poi/hssf/dev/RecordLister;->run()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    .end local v1    # "viewer":Lorg/apache/poi/hssf/dev/RecordLister;
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 191
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "RecordLister"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 192
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Outputs the summary of the records in file order"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 194
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, "usage: java org.apache.poi.hssf.dev.RecordLister filename"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lorg/apache/poi/hssf/dev/RecordLister;->file:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lorg/apache/poi/hssf/dev/BiffViewer;->getPOIFSInputStream(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v2

    .line 53
    .local v2, "din":Ljava/io/InputStream;
    new-instance v3, Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v3, v2}, Lorg/apache/poi/hssf/record/RecordInputStream;-><init>(Ljava/io/InputStream;)V

    .line 55
    .local v3, "rinp":Lorg/apache/poi/hssf/record/RecordInputStream;
    :cond_0
    :goto_0
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/RecordInputStream;->hasNextRecord()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 56
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/RecordInputStream;->getNextSid()I

    move-result v4

    .line 57
    .local v4, "sid":I
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/RecordInputStream;->nextRecord()V

    .line 59
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/RecordInputStream;->available()I

    move-result v5

    .line 60
    .local v5, "size":I
    invoke-static {v4}, Lorg/apache/poi/hssf/record/RecordFactory;->getRecordClass(I)Ljava/lang/Class;

    move-result-object v0

    .line 62
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/poi/hssf/record/Record;>;"
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lorg/apache/poi/hssf/dev/RecordLister;->formatSID(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Lorg/apache/poi/hssf/dev/RecordLister;->formatSize(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bytes"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 68
    if-eqz v0, :cond_1

    .line 69
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "  \t"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 70
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "org.apache.poi.hssf.record."

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 72
    :cond_1
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6}, Ljava/io/PrintStream;->println()V

    .line 74
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/RecordInputStream;->readRemainder()[B

    move-result-object v1

    .line 75
    .local v1, "data":[B
    array-length v6, v1

    if-lez v6, :cond_0

    .line 76
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "   "

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 77
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v1}, Lorg/apache/poi/hssf/dev/RecordLister;->formatData([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 80
    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/poi/hssf/record/Record;>;"
    .end local v1    # "data":[B
    .end local v4    # "sid":I
    .end local v5    # "size":I
    :cond_2
    return-void
.end method

.method public setFile(Ljava/lang/String;)V
    .locals 0
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 170
    iput-object p1, p0, Lorg/apache/poi/hssf/dev/RecordLister;->file:Ljava/lang/String;

    .line 171
    return-void
.end method
