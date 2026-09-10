.class public Lorg/apache/poi/hssf/dev/RecordLister;
.super Ljava/lang/Object;
.source "RecordLister.java"


# instance fields
.field file:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method private static byteToHex(B)Ljava/lang/String;
    .locals 4
    .param p0, "b"    # B

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

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 165
    :cond_1
    return-object v1
.end method

.method private static formatData([B)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # [B

    .line 122
    if-eqz p0, :cond_3

    array-length v0, p0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 127
    .local v0, "s":Ljava/lang/StringBuffer;
    array-length v1, p0

    const/16 v2, 0x9

    const/16 v3, 0x20

    if-le v1, v2, :cond_1

    .line 128
    const/4 v1, 0x0

    aget-byte v1, p0, v1

    invoke-static {v1}, Lorg/apache/poi/hssf/dev/RecordLister;->byteToHex(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 130
    const/4 v1, 0x1

    aget-byte v2, p0, v1

    invoke-static {v2}, Lorg/apache/poi/hssf/dev/RecordLister;->byteToHex(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 132
    const/4 v2, 0x2

    aget-byte v4, p0, v2

    invoke-static {v4}, Lorg/apache/poi/hssf/dev/RecordLister;->byteToHex(B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 134
    const/4 v4, 0x3

    aget-byte v5, p0, v4

    invoke-static {v5}, Lorg/apache/poi/hssf/dev/RecordLister;->byteToHex(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 137
    const-string v5, " .... "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 140
    array-length v5, p0

    add-int/lit8 v5, v5, -0x4

    aget-byte v5, p0, v5

    invoke-static {v5}, Lorg/apache/poi/hssf/dev/RecordLister;->byteToHex(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 142
    array-length v5, p0

    sub-int/2addr v5, v4

    aget-byte v4, p0, v5

    invoke-static {v4}, Lorg/apache/poi/hssf/dev/RecordLister;->byteToHex(B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 144
    array-length v4, p0

    sub-int/2addr v4, v2

    aget-byte v2, p0, v4

    invoke-static {v2}, Lorg/apache/poi/hssf/dev/RecordLister;->byteToHex(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 146
    array-length v2, p0

    sub-int/2addr v2, v1

    aget-byte v1, p0, v2

    invoke-static {v1}, Lorg/apache/poi/hssf/dev/RecordLister;->byteToHex(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 148
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 149
    aget-byte v2, p0, v1

    invoke-static {v2}, Lorg/apache/poi/hssf/dev/RecordLister;->byteToHex(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    .end local v1    # "i":I
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 123
    .end local v0    # "s":Ljava/lang/StringBuffer;
    :cond_3
    :goto_2
    const-string v0, ""

    return-object v0
.end method

.method private static formatSID(I)Ljava/lang/String;
    .locals 6
    .param p0, "sid"    # I

    .line 83
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "hex":Ljava/lang/String;
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "dec":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 87
    .local v2, "s":Ljava/lang/StringBuffer;
    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "i":I
    :goto_0
    const/16 v4, 0x30

    const/4 v5, 0x4

    if-ge v3, v5, :cond_0

    .line 89
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 88
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 91
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v5, :cond_1

    .line 95
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 94
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 97
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static formatSize(I)Ljava/lang/String;
    .locals 6
    .param p0, "size"    # I

    .line 103
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "hex":Ljava/lang/String;
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "dec":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 107
    .local v2, "s":Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "i":I
    :goto_0
    const/16 v4, 0x30

    const/4 v5, 0x3

    if-ge v3, v5, :cond_0

    .line 108
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 107
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 110
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v5, :cond_1

    .line 114
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 113
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 116
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .param p0, "args"    # [Ljava/lang/String;

    .line 175
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object v1, p0, v0

    const-string v2, "--help"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 179
    :try_start_0
    new-instance v1, Lorg/apache/poi/hssf/dev/RecordLister;

    invoke-direct {v1}, Lorg/apache/poi/hssf/dev/RecordLister;-><init>()V

    .line 181
    .local v1, "viewer":Lorg/apache/poi/hssf/dev/RecordLister;
    aget-object v0, p0, v0

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/dev/RecordLister;->setFile(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v1}, Lorg/apache/poi/hssf/dev/RecordLister;->run()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "viewer":Lorg/apache/poi/hssf/dev/RecordLister;
    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 187
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    goto :goto_1

    .line 191
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "RecordLister"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 192
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Outputs the summary of the records in file order"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 194
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "usage: java org.apache.poi.hssf.dev.RecordLister filename"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 198
    :goto_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/apache/poi/hssf/dev/RecordLister;->file:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/poi/hssf/dev/BiffViewer;->getPOIFSInputStream(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v0

    .line 53
    .local v0, "din":Ljava/io/InputStream;
    new-instance v1, Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;-><init>(Ljava/io/InputStream;)V

    .line 55
    .local v1, "rinp":Lorg/apache/poi/hssf/record/RecordInputStream;
    :goto_0
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RecordInputStream;->hasNextRecord()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 56
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RecordInputStream;->getNextSid()I

    move-result v2

    .line 57
    .local v2, "sid":I
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RecordInputStream;->nextRecord()V

    .line 59
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RecordInputStream;->available()I

    move-result v3

    .line 60
    .local v3, "size":I
    invoke-static {v2}, Lorg/apache/poi/hssf/record/RecordFactory;->getRecordClass(I)Ljava/lang/Class;

    move-result-object v4

    .line 62
    .local v4, "clz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/poi/hssf/record/Record;>;"
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lorg/apache/poi/hssf/dev/RecordLister;->formatSID(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lorg/apache/poi/hssf/dev/RecordLister;->formatSize(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " bytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 68
    if-eqz v4, :cond_0

    .line 69
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "  \t"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 70
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "org.apache.poi.hssf.record."

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 72
    :cond_0
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5}, Ljava/io/PrintStream;->println()V

    .line 74
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readRemainder()[B

    move-result-object v5

    .line 75
    .local v5, "data":[B
    array-length v6, v5

    if-lez v6, :cond_1

    .line 76
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "   "

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 77
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v5}, Lorg/apache/poi/hssf/dev/RecordLister;->formatData([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 79
    .end local v2    # "sid":I
    .end local v3    # "size":I
    .end local v4    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/poi/hssf/record/Record;>;"
    .end local v5    # "data":[B
    :cond_1
    goto :goto_0

    .line 80
    :cond_2
    return-void
.end method

.method public setFile(Ljava/lang/String;)V
    .locals 0
    .param p1, "file"    # Ljava/lang/String;

    .line 170
    iput-object p1, p0, Lorg/apache/poi/hssf/dev/RecordLister;->file:Ljava/lang/String;

    .line 171
    return-void
.end method
