.class public Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
.super Ljava/lang/Object;
.source "BODYSTRUCTURE.java"

# interfaces
.implements Lcom/sun/mail/imap/protocol/Item;


# static fields
.field private static MULTI:I

.field private static NESTED:I

.field private static SINGLE:I

.field static final name:[C

.field private static final parseDebug:Z


# instance fields
.field public attachment:Ljava/lang/String;

.field public bodies:[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

.field public cParams:Ljavax/mail/internet/ParameterList;

.field public dParams:Ljavax/mail/internet/ParameterList;

.field public description:Ljava/lang/String;

.field public disposition:Ljava/lang/String;

.field public encoding:Ljava/lang/String;

.field public envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

.field public id:Ljava/lang/String;

.field public language:[Ljava/lang/String;

.field public lines:I

.field public md5:Ljava/lang/String;

.field public msgno:I

.field private processedType:I

.field public size:I

.field public subtype:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    const/16 v0, 0xd

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    .line 58
    sput-object v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->name:[C

    .line 79
    const/4 v0, 0x1

    sput v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->SINGLE:I

    .line 80
    const/4 v0, 0x2

    sput v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->MULTI:I

    .line 81
    const/4 v0, 0x3

    sput v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->NESTED:I

    .line 86
    const-string v0, "mail.imap.parse.debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    .line 85
    sput-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    .line 86
    return-void

    .line 59
    :array_0
    .array-data 2
        0x42s
        0x4fs
        0x44s
        0x59s
        0x53s
        0x54s
        0x52s
        0x55s
        0x43s
        0x54s
        0x55s
        0x52s
        0x45s
    .end array-data
.end method

.method public constructor <init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V
    .locals 10
    .param p1, "r"    # Lcom/sun/mail/imap/protocol/FetchResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v7, -0x1

    iput v7, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I

    .line 66
    const/4 v7, -0x1

    iput v7, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->size:I

    .line 90
    sget-boolean v7, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v7, :cond_0

    .line 91
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "DEBUG IMAP: parsing BODYSTRUCTURE"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 92
    :cond_0
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v7

    iput v7, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->msgno:I

    .line 93
    sget-boolean v7, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v7, :cond_1

    .line 94
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "DEBUG IMAP: msgno "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->msgno:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 96
    :cond_1
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->skipSpaces()V

    .line 98
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v7

    const/16 v8, 0x28

    if-eq v7, v8, :cond_2

    .line 99
    new-instance v7, Lcom/sun/mail/iap/ParsingException;

    .line 100
    const-string v8, "BODYSTRUCTURE parse error: missing ``(\'\' at start"

    .line 99
    invoke-direct {v7, v8}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 102
    :cond_2
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->peekByte()B

    move-result v7

    const/16 v8, 0x28

    if-ne v7, v8, :cond_16

    .line 103
    sget-boolean v7, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v7, :cond_3

    .line 104
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "DEBUG IMAP: parsing multipart"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 105
    :cond_3
    const-string v7, "multipart"

    iput-object v7, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    .line 106
    sget v7, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->MULTI:I

    iput v7, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->processedType:I

    .line 107
    new-instance v6, Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 108
    .local v6, "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;>;"
    const/4 v3, 0x1

    .line 110
    .local v3, "i":I
    :cond_4
    new-instance v7, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    invoke-direct {v7, p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->skipSpaces()V

    .line 118
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->peekByte()B

    move-result v7

    const/16 v8, 0x28

    if-eq v7, v8, :cond_4

    .line 121
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iput-object v7, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->bodies:[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    .line 123
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    .line 124
    sget-boolean v7, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v7, :cond_5

    .line 125
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "DEBUG IMAP: subtype "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 127
    :cond_5
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v7

    const/16 v8, 0x29

    if-ne v7, v8, :cond_7

    .line 128
    sget-boolean v7, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v7, :cond_6

    .line 129
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "DEBUG IMAP: parse DONE"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 388
    .end local v3    # "i":I
    .end local v6    # "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;>;"
    :cond_6
    :goto_0
    return-void

    .line 135
    .restart local v3    # "i":I
    .restart local v6    # "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;>;"
    :cond_7
    sget-boolean v7, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v7, :cond_8

    .line 136
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "DEBUG IMAP: parsing extension data"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 138
    :cond_8
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseParameters(Lcom/sun/mail/iap/Response;)Ljavax/mail/internet/ParameterList;

    move-result-object v7

    iput-object v7, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->cParams:Ljavax/mail/internet/ParameterList;

    .line 139
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v7

    const/16 v8, 0x29

    if-ne v7, v8, :cond_9

    .line 140
    sget-boolean v7, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v7, :cond_6

    .line 141
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "DEBUG IMAP: body parameters DONE"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_9
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v0

    .line 147
    .local v0, "b":B
    const/16 v7, 0x28

    if-ne v0, v7, :cond_e

    .line 148
    sget-boolean v7, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v7, :cond_a

    .line 149
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "DEBUG IMAP: parse disposition"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 150
    :cond_a
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->disposition:Ljava/lang/String;

    .line 151
    sget-boolean v7, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v7, :cond_b

    .line 152
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "DEBUG IMAP: disposition "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    iget-object v9, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->disposition:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 152
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 154
    :cond_b
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseParameters(Lcom/sun/mail/iap/Response;)Ljavax/mail/internet/ParameterList;

    move-result-object v7

    iput-object v7, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->dParams:Ljavax/mail/internet/ParameterList;

    .line 155
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v7

    const/16 v8, 0x29

    if-eq v7, v8, :cond_c

    .line 156
    new-instance v7, Lcom/sun/mail/iap/ParsingException;

    .line 157
    const-string v8, "BODYSTRUCTURE parse error: missing ``)\'\' at end of disposition in multipart"

    .line 156
    invoke-direct {v7, v8}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 159
    :cond_c
    sget-boolean v7, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v7, :cond_d

    .line 160
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "DEBUG IMAP: disposition DONE"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 174
    :cond_d
    :goto_1
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v0

    const/16 v7, 0x29

    if-ne v0, v7, :cond_12

    .line 175
    sget-boolean v7, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v7, :cond_6

    .line 176
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "DEBUG IMAP: no body-fld-lang"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 161
    :cond_e
    const/16 v7, 0x4e

    if-eq v0, v7, :cond_f

    const/16 v7, 0x6e

    if-ne v0, v7, :cond_11

    .line 162
    :cond_f
    sget-boolean v7, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v7, :cond_10

    .line 163
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "DEBUG IMAP: disposition NIL"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 164
    :cond_10
    const/4 v7, 0x2

    invoke-virtual {p1, v7}, Lcom/sun/mail/imap/protocol/FetchResponse;->skip(I)V

    goto :goto_1

    .line 166
    :cond_11
    new-instance v7, Lcom/sun/mail/iap/ParsingException;

    .line 167
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "BODYSTRUCTURE parse error: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    iget-object v9, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 169
    const-string v9, "bad multipart disposition, b "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 167
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 166
    invoke-direct {v7, v8}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 180
    :cond_12
    const/16 v7, 0x20

    if-eq v0, v7, :cond_13

    .line 181
    new-instance v7, Lcom/sun/mail/iap/ParsingException;

    .line 182
    const-string v8, "BODYSTRUCTURE parse error: missing space after disposition"

    .line 181
    invoke-direct {v7, v8}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 186
    :cond_13
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->peekByte()B

    move-result v7

    const/16 v8, 0x28

    if-ne v7, v8, :cond_15

    .line 187
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readStringList()[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->language:[Ljava/lang/String;

    .line 188
    sget-boolean v7, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v7, :cond_14

    .line 189
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 190
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "DEBUG IMAP: language len "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->language:[Ljava/lang/String;

    array-length v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 189
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 205
    :cond_14
    :goto_2
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v7

    const/16 v8, 0x20

    if-ne v7, v8, :cond_6

    .line 206
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseBodyExtension(Lcom/sun/mail/iap/Response;)V

    goto :goto_2

    .line 192
    :cond_15
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v4

    .line 193
    .local v4, "l":Ljava/lang/String;
    if-eqz v4, :cond_14

    .line 194
    const/4 v7, 0x1

    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v4, v5, v7

    .line 195
    .local v5, "la":[Ljava/lang/String;
    iput-object v5, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->language:[Ljava/lang/String;

    .line 196
    sget-boolean v7, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v7, :cond_14

    .line 197
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "DEBUG IMAP: language "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 207
    .end local v0    # "b":B
    .end local v3    # "i":I
    .end local v4    # "l":Ljava/lang/String;
    .end local v5    # "la":[Ljava/lang/String;
    .end local v6    # "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;>;"
    :cond_16
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->peekByte()B

    move-result v7

    const/16 v8, 0x29

    if-ne v7, v8, :cond_17

    .line 226
    new-instance v7, Lcom/sun/mail/iap/ParsingException;

    .line 227
    const-string v8, "BODYSTRUCTURE parse error: missing body content"

    .line 226
    invoke-direct {v7, v8}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 229
    :cond_17
    sget-boolean v7, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v7, :cond_18

    .line 230
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "DEBUG IMAP: single part"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 231
    :cond_18
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    .line 232
    sget-boolean v7, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v7, :cond_19

    .line 233
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "DEBUG IMAP: type "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 234
    :cond_19
    sget v7, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->SINGLE:I

    iput v7, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->processedType:I

    .line 235
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    .line 236
    sget-boolean v7, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v7, :cond_1a

    .line 237
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "DEBUG IMAP: subtype "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 240
    :cond_1a
    iget-object v7, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    if-nez v7, :cond_1b

    .line 241
    const-string v7, "application"

    iput-object v7, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    .line 242
    const-string v7, "octet-stream"

    iput-object v7, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    .line 244
    :cond_1b
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseParameters(Lcom/sun/mail/iap/Response;)Ljavax/mail/internet/ParameterList;

    move-result-object v7

    iput-object v7, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->cParams:Ljavax/mail/internet/ParameterList;

    .line 245
    sget-boolean v7, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v7, :cond_1c

    .line 246
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "DEBUG IMAP: cParams "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->cParams:Ljavax/mail/internet/ParameterList;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 247
    :cond_1c
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->id:Ljava/lang/String;

    .line 248
    sget-boolean v7, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v7, :cond_1d

    .line 249
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "DEBUG IMAP: id "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->id:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 250
    :cond_1d
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->description:Ljava/lang/String;

    .line 251
    sget-boolean v7, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v7, :cond_1e

    .line 252
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "DEBUG IMAP: description "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->description:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 257
    :cond_1e
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readAtomString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->encoding:Ljava/lang/String;

    .line 258
    iget-object v7, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->encoding:Ljava/lang/String;

    if-eqz v7, :cond_1f

    iget-object v7, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->encoding:Ljava/lang/String;

    const-string v8, "NIL"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 259
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->encoding:Ljava/lang/String;

    .line 260
    :cond_1f
    sget-boolean v7, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v7, :cond_20

    .line 261
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "DEBUG IMAP: encoding "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->encoding:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 262
    :cond_20
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readNumber()I

    move-result v7

    iput v7, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->size:I

    .line 263
    sget-boolean v7, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v7, :cond_21

    .line 264
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "DEBUG IMAP: size "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->size:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 265
    :cond_21
    iget v7, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->size:I

    if-gez v7, :cond_22

    .line 266
    new-instance v7, Lcom/sun/mail/iap/ParsingException;

    .line 267
    const-string v8, "BODYSTRUCTURE parse error: bad ``size\'\' element"

    .line 266
    invoke-direct {v7, v8}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 270
    :cond_22
    iget-object v7, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    const-string v8, "text"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_24

    .line 271
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readNumber()I

    move-result v7

    iput v7, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I

    .line 272
    sget-boolean v7, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v7, :cond_23

    .line 273
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "DEBUG IMAP: lines "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 274
    :cond_23
    iget v7, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I

    if-gez v7, :cond_28

    .line 275
    new-instance v7, Lcom/sun/mail/iap/ParsingException;

    .line 276
    const-string v8, "BODYSTRUCTURE parse error: bad ``lines\'\' element"

    .line 275
    invoke-direct {v7, v8}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 277
    :cond_24
    iget-object v7, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    const-string v8, "message"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_29

    .line 278
    iget-object v7, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    const-string v8, "rfc822"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_29

    .line 280
    sget v7, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->NESTED:I

    iput v7, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->processedType:I

    .line 285
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->skipSpaces()V

    .line 286
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->peekByte()B

    move-result v7

    const/16 v8, 0x28

    if-ne v7, v8, :cond_27

    .line 287
    new-instance v7, Lcom/sun/mail/imap/protocol/ENVELOPE;

    invoke-direct {v7, p1}, Lcom/sun/mail/imap/protocol/ENVELOPE;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    iput-object v7, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    .line 288
    sget-boolean v7, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v7, :cond_25

    .line 289
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 290
    const-string v8, "DEBUG IMAP: got envelope of nested message"

    .line 289
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 291
    :cond_25
    const/4 v7, 0x1

    new-array v2, v7, [Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    const/4 v7, 0x0

    new-instance v8, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    invoke-direct {v8, p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    aput-object v8, v2, v7

    .line 292
    .local v2, "bs":[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
    iput-object v2, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->bodies:[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    .line 293
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readNumber()I

    move-result v7

    iput v7, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I

    .line 294
    sget-boolean v7, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v7, :cond_26

    .line 295
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "DEBUG IMAP: lines "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 296
    :cond_26
    iget v7, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I

    if-gez v7, :cond_28

    .line 297
    new-instance v7, Lcom/sun/mail/iap/ParsingException;

    .line 298
    const-string v8, "BODYSTRUCTURE parse error: bad ``lines\'\' element"

    .line 297
    invoke-direct {v7, v8}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 300
    .end local v2    # "bs":[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
    :cond_27
    sget-boolean v7, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v7, :cond_28

    .line 301
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "DEBUG IMAP: missing envelope and body of nested message"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 315
    :cond_28
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->peekByte()B

    move-result v7

    const/16 v8, 0x29

    if-ne v7, v8, :cond_2a

    .line 316
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    .line 317
    sget-boolean v7, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v7, :cond_6

    .line 318
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "DEBUG IMAP: parse DONE"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 306
    :cond_29
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->skipSpaces()V

    .line 307
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->peekByte()B

    move-result v1

    .line 308
    .local v1, "bn":B
    int-to-char v7, v1

    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_28

    .line 309
    new-instance v7, Lcom/sun/mail/iap/ParsingException;

    .line 310
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "BODYSTRUCTURE parse error: server erroneously included ``lines\'\' element with type "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 312
    iget-object v9, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 310
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 309
    invoke-direct {v7, v8}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 325
    .end local v1    # "bn":B
    :cond_2a
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->md5:Ljava/lang/String;

    .line 326
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v7

    const/16 v8, 0x29

    if-ne v7, v8, :cond_2b

    .line 327
    sget-boolean v7, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v7, :cond_6

    .line 328
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "DEBUG IMAP: no MD5 DONE"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 333
    :cond_2b
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v0

    .line 334
    .restart local v0    # "b":B
    const/16 v7, 0x28

    if-ne v0, v7, :cond_2e

    .line 335
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->disposition:Ljava/lang/String;

    .line 336
    sget-boolean v7, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v7, :cond_2c

    .line 337
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "DEBUG IMAP: disposition "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 338
    iget-object v9, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->disposition:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 337
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 339
    :cond_2c
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseParameters(Lcom/sun/mail/iap/Response;)Ljavax/mail/internet/ParameterList;

    move-result-object v7

    iput-object v7, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->dParams:Ljavax/mail/internet/ParameterList;

    .line 340
    sget-boolean v7, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v7, :cond_2d

    .line 341
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "DEBUG IMAP: dParams "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->dParams:Ljavax/mail/internet/ParameterList;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 342
    :cond_2d
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v7

    const/16 v8, 0x29

    if-eq v7, v8, :cond_31

    .line 343
    new-instance v7, Lcom/sun/mail/iap/ParsingException;

    .line 344
    const-string v8, "BODYSTRUCTURE parse error: missing ``)\'\' at end of disposition"

    .line 343
    invoke-direct {v7, v8}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 346
    :cond_2e
    const/16 v7, 0x4e

    if-eq v0, v7, :cond_2f

    const/16 v7, 0x6e

    if-ne v0, v7, :cond_32

    .line 347
    :cond_2f
    sget-boolean v7, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v7, :cond_30

    .line 348
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "DEBUG IMAP: disposition NIL"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 349
    :cond_30
    const/4 v7, 0x2

    invoke-virtual {p1, v7}, Lcom/sun/mail/imap/protocol/FetchResponse;->skip(I)V

    .line 357
    :cond_31
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v7

    const/16 v8, 0x29

    if-ne v7, v8, :cond_33

    .line 358
    sget-boolean v7, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v7, :cond_6

    .line 359
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "DEBUG IMAP: disposition DONE"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 351
    :cond_32
    new-instance v7, Lcom/sun/mail/iap/ParsingException;

    .line 352
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "BODYSTRUCTURE parse error: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 353
    iget-object v9, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 354
    const-string v9, "bad single part disposition, b "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 352
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 351
    invoke-direct {v7, v8}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 364
    :cond_33
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->peekByte()B

    move-result v7

    const/16 v8, 0x28

    if-ne v7, v8, :cond_35

    .line 365
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readStringList()[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->language:[Ljava/lang/String;

    .line 366
    sget-boolean v7, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v7, :cond_34

    .line 367
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "DEBUG IMAP: language len "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 368
    iget-object v9, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->language:[Ljava/lang/String;

    array-length v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 367
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 383
    :cond_34
    :goto_3
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v7

    const/16 v8, 0x20

    if-eq v7, v8, :cond_36

    .line 385
    sget-boolean v7, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v7, :cond_6

    .line 386
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "DEBUG IMAP: all DONE"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 370
    :cond_35
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v4

    .line 371
    .restart local v4    # "l":Ljava/lang/String;
    if-eqz v4, :cond_34

    .line 372
    const/4 v7, 0x1

    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v4, v5, v7

    .line 373
    .restart local v5    # "la":[Ljava/lang/String;
    iput-object v5, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->language:[Ljava/lang/String;

    .line 374
    sget-boolean v7, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v7, :cond_34

    .line 375
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "DEBUG IMAP: language "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 384
    .end local v4    # "l":Ljava/lang/String;
    .end local v5    # "la":[Ljava/lang/String;
    :cond_36
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseBodyExtension(Lcom/sun/mail/iap/Response;)V

    goto :goto_3
.end method

.method private parseBodyExtension(Lcom/sun/mail/iap/Response;)V
    .locals 3
    .param p1, "r"    # Lcom/sun/mail/iap/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .prologue
    .line 436
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 438
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->peekByte()B

    move-result v0

    .line 439
    .local v0, "b":B
    const/16 v1, 0x28

    if-ne v0, v1, :cond_1

    .line 440
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/sun/mail/iap/Response;->skip(I)V

    .line 442
    :cond_0
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseBodyExtension(Lcom/sun/mail/iap/Response;)V

    .line 443
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v1

    const/16 v2, 0x29

    if-ne v1, v2, :cond_0

    .line 448
    :goto_0
    return-void

    .line 444
    :cond_1
    int-to-char v1, v0

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 445
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readNumber()I

    goto :goto_0

    .line 447
    :cond_2
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    goto :goto_0
.end method

.method private parseParameters(Lcom/sun/mail/iap/Response;)Ljavax/mail/internet/ParameterList;
    .locals 7
    .param p1, "r"    # Lcom/sun/mail/iap/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .prologue
    .line 404
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 406
    const/4 v1, 0x0

    .line 407
    .local v1, "list":Ljavax/mail/internet/ParameterList;
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v0

    .line 408
    .local v0, "b":B
    const/16 v4, 0x28

    if-ne v0, v4, :cond_4

    .line 409
    new-instance v1, Ljavax/mail/internet/ParameterList;

    .end local v1    # "list":Ljavax/mail/internet/ParameterList;
    invoke-direct {v1}, Ljavax/mail/internet/ParameterList;-><init>()V

    .line 411
    .restart local v1    # "list":Ljavax/mail/internet/ParameterList;
    :cond_0
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    move-result-object v2

    .line 412
    .local v2, "name":Ljava/lang/String;
    sget-boolean v4, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v4, :cond_1

    .line 413
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DEBUG IMAP: parameter name "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 414
    :cond_1
    if-nez v2, :cond_2

    .line 415
    new-instance v4, Lcom/sun/mail/iap/ParsingException;

    .line 416
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "BODYSTRUCTURE parse error: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 417
    iget-object v6, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 418
    const-string v6, "null name in parameter list"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 416
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 415
    invoke-direct {v4, v5}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 419
    :cond_2
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    move-result-object v3

    .line 420
    .local v3, "value":Ljava/lang/String;
    sget-boolean v4, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v4, :cond_3

    .line 421
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DEBUG IMAP: parameter value "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 422
    :cond_3
    invoke-virtual {v1, v2, v3}, Ljavax/mail/internet/ParameterList;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v4

    const/16 v5, 0x29

    if-ne v4, v5, :cond_0

    .line 424
    invoke-virtual {v1}, Ljavax/mail/internet/ParameterList;->combineSegments()V

    .line 432
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 425
    :cond_4
    const/16 v4, 0x4e

    if-eq v0, v4, :cond_5

    const/16 v4, 0x6e

    if-ne v0, v4, :cond_7

    .line 426
    :cond_5
    sget-boolean v4, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v4, :cond_6

    .line 427
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "DEBUG IMAP: parameter list NIL"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 428
    :cond_6
    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Lcom/sun/mail/iap/Response;->skip(I)V

    goto :goto_0

    .line 430
    :cond_7
    new-instance v4, Lcom/sun/mail/iap/ParsingException;

    const-string v5, "Parameter list parse error"

    invoke-direct {v4, v5}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public isMulti()Z
    .locals 2

    .prologue
    .line 391
    iget v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->processedType:I

    sget v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->MULTI:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNested()Z
    .locals 2

    .prologue
    .line 399
    iget v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->processedType:I

    sget v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->NESTED:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSingle()Z
    .locals 2

    .prologue
    .line 395
    iget v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->processedType:I

    sget v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->SINGLE:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
