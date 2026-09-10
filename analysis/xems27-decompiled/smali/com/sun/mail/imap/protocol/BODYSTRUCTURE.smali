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
    .locals 17
    .param p1, "r"    # Lcom/sun/mail/imap/protocol/FetchResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .line 89
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v2, -0x1

    iput v2, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I

    .line 66
    iput v2, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->size:I

    .line 90
    sget-boolean v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v2, :cond_0

    .line 91
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "DEBUG IMAP: parsing BODYSTRUCTURE"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 92
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v2

    iput v2, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->msgno:I

    .line 93
    sget-boolean v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v2, :cond_1

    .line 94
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DEBUG IMAP: msgno "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->msgno:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 96
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->skipSpaces()V

    .line 98
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v2

    const/16 v3, 0x28

    if-ne v2, v3, :cond_40

    .line 102
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->peekByte()B

    move-result v2

    const-string v4, "DEBUG IMAP: language "

    const-string v5, "DEBUG IMAP: language len "

    const-string v6, "DEBUG IMAP: disposition DONE"

    const-string v7, "DEBUG IMAP: disposition "

    const-string v8, ": "

    const-string v9, "BODYSTRUCTURE parse error: "

    const-string v10, "DEBUG IMAP: disposition NIL"

    const-string v14, "DEBUG IMAP: parse DONE"

    const-string v15, "DEBUG IMAP: subtype "

    const/16 v16, 0x0

    const-string v11, "/"

    const/4 v12, 0x1

    if-ne v2, v3, :cond_18

    .line 103
    sget-boolean v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v2, :cond_2

    .line 104
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v13, "DEBUG IMAP: parsing multipart"

    invoke-virtual {v2, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 105
    :cond_2
    const-string v2, "multipart"

    iput-object v2, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    .line 106
    sget v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->MULTI:I

    iput v2, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->processedType:I

    .line 107
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 108
    .local v2, "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;>;"
    const/4 v13, 0x1

    .line 110
    .local v13, "i":I
    :goto_0
    new-instance v12, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    invoke-direct {v12, v1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->skipSpaces()V

    .line 118
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->peekByte()B

    move-result v12

    if-eq v12, v3, :cond_17

    .line 121
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    new-array v12, v12, [Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    invoke-interface {v2, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iput-object v12, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->bodies:[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    .line 123
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    .line 124
    sget-boolean v12, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v12, :cond_3

    .line 125
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v15, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 127
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v3

    const/16 v12, 0x29

    if-ne v3, v12, :cond_5

    .line 128
    sget-boolean v3, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v3, :cond_4

    .line 129
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 130
    :cond_4
    return-void

    .line 135
    :cond_5
    sget-boolean v3, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v3, :cond_6

    .line 136
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "DEBUG IMAP: parsing extension data"

    invoke-virtual {v3, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 138
    :cond_6
    invoke-direct/range {p0 .. p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseParameters(Lcom/sun/mail/iap/Response;)Ljavax/mail/internet/ParameterList;

    move-result-object v3

    iput-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->cParams:Ljavax/mail/internet/ParameterList;

    .line 139
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v3

    const/16 v12, 0x29

    if-ne v3, v12, :cond_8

    .line 140
    sget-boolean v3, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v3, :cond_7

    .line 141
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "DEBUG IMAP: body parameters DONE"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 142
    :cond_7
    return-void

    .line 146
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v3

    .line 147
    .local v3, "b":B
    const/16 v12, 0x28

    if-ne v3, v12, :cond_c

    .line 148
    sget-boolean v8, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v8, :cond_9

    .line 149
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "DEBUG IMAP: parse disposition"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 150
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->disposition:Ljava/lang/String;

    .line 151
    sget-boolean v8, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v8, :cond_a

    .line 152
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    iget-object v7, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->disposition:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 152
    invoke-virtual {v8, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 154
    :cond_a
    invoke-direct/range {p0 .. p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseParameters(Lcom/sun/mail/iap/Response;)Ljavax/mail/internet/ParameterList;

    move-result-object v7

    iput-object v7, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->dParams:Ljavax/mail/internet/ParameterList;

    .line 155
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v7

    const/16 v8, 0x29

    if-ne v7, v8, :cond_b

    .line 159
    sget-boolean v7, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v7, :cond_10

    .line 160
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 161
    goto :goto_2

    .line 156
    :cond_b
    new-instance v4, Lcom/sun/mail/iap/ParsingException;

    .line 157
    nop

    .line 156
    const-string v5, "BODYSTRUCTURE parse error: missing ``)\'\' at end of disposition in multipart"

    invoke-direct {v4, v5}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 161
    :cond_c
    const/16 v6, 0x4e

    if-eq v3, v6, :cond_e

    const/16 v6, 0x6e

    if-ne v3, v6, :cond_d

    goto :goto_1

    .line 166
    :cond_d
    new-instance v4, Lcom/sun/mail/iap/ParsingException;

    .line 167
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    iget-object v6, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    const-string v6, "bad multipart disposition, b "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 166
    invoke-direct {v4, v5}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 162
    :cond_e
    :goto_1
    sget-boolean v6, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v6, :cond_f

    .line 163
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 164
    :cond_f
    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Lcom/sun/mail/imap/protocol/FetchResponse;->skip(I)V

    .line 165
    nop

    .line 174
    :cond_10
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v6

    move v3, v6

    const/16 v7, 0x29

    if-ne v6, v7, :cond_12

    .line 175
    sget-boolean v4, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v4, :cond_11

    .line 176
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "DEBUG IMAP: no body-fld-lang"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 177
    :cond_11
    return-void

    .line 180
    :cond_12
    const/16 v6, 0x20

    if-ne v3, v6, :cond_16

    .line 186
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->peekByte()B

    move-result v6

    const/16 v7, 0x28

    if-ne v6, v7, :cond_13

    .line 187
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readStringList()[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->language:[Ljava/lang/String;

    .line 188
    sget-boolean v4, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v4, :cond_14

    .line 189
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 190
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->language:[Ljava/lang/String;

    array-length v5, v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 189
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 191
    goto :goto_3

    .line 192
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v5

    .line 193
    .local v5, "l":Ljava/lang/String;
    if-eqz v5, :cond_14

    .line 194
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    aput-object v5, v6, v16

    .line 195
    .local v6, "la":[Ljava/lang/String;
    iput-object v6, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->language:[Ljava/lang/String;

    .line 196
    sget-boolean v7, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v7, :cond_14

    .line 197
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 205
    .end local v5    # "l":Ljava/lang/String;
    .end local v6    # "la":[Ljava/lang/String;
    :cond_14
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_15

    .line 207
    .end local v2    # "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;>;"
    .end local v3    # "b":B
    .end local v13    # "i":I
    goto/16 :goto_8

    .line 206
    .restart local v2    # "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;>;"
    .restart local v3    # "b":B
    .restart local v13    # "i":I
    :cond_15
    invoke-direct/range {p0 .. p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseBodyExtension(Lcom/sun/mail/iap/Response;)V

    goto :goto_3

    .line 181
    :cond_16
    new-instance v4, Lcom/sun/mail/iap/ParsingException;

    .line 182
    nop

    .line 181
    const-string v5, "BODYSTRUCTURE parse error: missing space after disposition"

    invoke-direct {v4, v5}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 118
    .end local v3    # "b":B
    :cond_17
    const/16 v3, 0x28

    const/4 v12, 0x1

    goto/16 :goto_0

    .line 207
    .end local v2    # "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;>;"
    .end local v13    # "i":I
    :cond_18
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->peekByte()B

    move-result v2

    const/16 v3, 0x29

    if-eq v2, v3, :cond_3f

    .line 229
    sget-boolean v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v2, :cond_19

    .line 230
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "DEBUG IMAP: single part"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 231
    :cond_19
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    .line 232
    sget-boolean v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v2, :cond_1a

    .line 233
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v12, "DEBUG IMAP: type "

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 234
    :cond_1a
    sget v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->SINGLE:I

    iput v2, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->processedType:I

    .line 235
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    .line 236
    sget-boolean v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v2, :cond_1b

    .line 237
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 240
    :cond_1b
    iget-object v2, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    if-nez v2, :cond_1c

    .line 241
    const-string v2, "application"

    iput-object v2, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    .line 242
    const-string v2, "octet-stream"

    iput-object v2, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    .line 244
    :cond_1c
    invoke-direct/range {p0 .. p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseParameters(Lcom/sun/mail/iap/Response;)Ljavax/mail/internet/ParameterList;

    move-result-object v2

    iput-object v2, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->cParams:Ljavax/mail/internet/ParameterList;

    .line 245
    sget-boolean v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v2, :cond_1d

    .line 246
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v12, "DEBUG IMAP: cParams "

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->cParams:Ljavax/mail/internet/ParameterList;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 247
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->id:Ljava/lang/String;

    .line 248
    sget-boolean v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v2, :cond_1e

    .line 249
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v12, "DEBUG IMAP: id "

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->id:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 250
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->description:Ljava/lang/String;

    .line 251
    sget-boolean v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v2, :cond_1f

    .line 252
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v12, "DEBUG IMAP: description "

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->description:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 257
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readAtomString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->encoding:Ljava/lang/String;

    .line 258
    if-eqz v2, :cond_20

    const-string v3, "NIL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 259
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->encoding:Ljava/lang/String;

    .line 260
    :cond_20
    sget-boolean v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v2, :cond_21

    .line 261
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v12, "DEBUG IMAP: encoding "

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->encoding:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 262
    :cond_21
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readNumber()I

    move-result v2

    iput v2, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->size:I

    .line 263
    sget-boolean v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v2, :cond_22

    .line 264
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v12, "DEBUG IMAP: size "

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v12, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->size:I

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 265
    :cond_22
    iget v2, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->size:I

    if-ltz v2, :cond_3e

    .line 270
    iget-object v2, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    const-string v3, "text"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "BODYSTRUCTURE parse error: bad ``lines\'\' element"

    const-string v12, "DEBUG IMAP: lines "

    if-eqz v2, :cond_25

    .line 271
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readNumber()I

    move-result v2

    iput v2, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I

    .line 272
    sget-boolean v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v2, :cond_23

    .line 273
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v12, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 274
    :cond_23
    iget v2, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I

    if-ltz v2, :cond_24

    goto/16 :goto_4

    .line 275
    :cond_24
    new-instance v2, Lcom/sun/mail/iap/ParsingException;

    .line 276
    nop

    .line 275
    invoke-direct {v2, v3}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 277
    :cond_25
    iget-object v2, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    const-string v13, "message"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 278
    iget-object v2, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    const-string v13, "rfc822"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 280
    sget v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->NESTED:I

    iput v2, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->processedType:I

    .line 285
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->skipSpaces()V

    .line 286
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->peekByte()B

    move-result v2

    const/16 v13, 0x28

    if-ne v2, v13, :cond_29

    .line 287
    new-instance v2, Lcom/sun/mail/imap/protocol/ENVELOPE;

    invoke-direct {v2, v1}, Lcom/sun/mail/imap/protocol/ENVELOPE;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    iput-object v2, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    .line 288
    sget-boolean v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v2, :cond_26

    .line 289
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 290
    nop

    .line 289
    const-string v13, "DEBUG IMAP: got envelope of nested message"

    invoke-virtual {v2, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 291
    :cond_26
    const/4 v2, 0x1

    new-array v13, v2, [Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    new-instance v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    invoke-direct {v2, v1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    aput-object v2, v13, v16

    move-object v2, v13

    .line 292
    .local v2, "bs":[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
    iput-object v2, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->bodies:[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    .line 293
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readNumber()I

    move-result v13

    iput v13, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I

    .line 294
    sget-boolean v13, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v13, :cond_27

    .line 295
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v12, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 296
    :cond_27
    iget v12, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I

    if-ltz v12, :cond_28

    goto :goto_4

    .line 297
    :cond_28
    new-instance v4, Lcom/sun/mail/iap/ParsingException;

    .line 298
    nop

    .line 297
    invoke-direct {v4, v3}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 300
    .end local v2    # "bs":[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
    :cond_29
    sget-boolean v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v2, :cond_2b

    .line 301
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "DEBUG IMAP: missing envelope and body of nested message"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 304
    goto :goto_4

    .line 306
    :cond_2a
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->skipSpaces()V

    .line 307
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->peekByte()B

    move-result v2

    .line 308
    .local v2, "bn":B
    int-to-char v3, v2

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_3d

    .line 315
    .end local v2    # "bn":B
    :cond_2b
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->peekByte()B

    move-result v2

    const/16 v3, 0x29

    if-ne v2, v3, :cond_2d

    .line 316
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    .line 317
    sget-boolean v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v2, :cond_2c

    .line 318
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 319
    :cond_2c
    return-void

    .line 325
    :cond_2d
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->md5:Ljava/lang/String;

    .line 326
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v2

    const/16 v3, 0x29

    if-ne v2, v3, :cond_2f

    .line 327
    sget-boolean v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v2, :cond_2e

    .line 328
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "DEBUG IMAP: no MD5 DONE"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 329
    :cond_2e
    return-void

    .line 333
    :cond_2f
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v3

    .line 334
    .restart local v3    # "b":B
    const/16 v2, 0x28

    if-ne v3, v2, :cond_33

    .line 335
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->disposition:Ljava/lang/String;

    .line 336
    sget-boolean v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v2, :cond_30

    .line 337
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 338
    iget-object v7, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->disposition:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 337
    invoke-virtual {v2, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 339
    :cond_30
    invoke-direct/range {p0 .. p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseParameters(Lcom/sun/mail/iap/Response;)Ljavax/mail/internet/ParameterList;

    move-result-object v2

    iput-object v2, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->dParams:Ljavax/mail/internet/ParameterList;

    .line 340
    sget-boolean v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v2, :cond_31

    .line 341
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "DEBUG IMAP: dParams "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->dParams:Ljavax/mail/internet/ParameterList;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 342
    :cond_31
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v2

    const/16 v7, 0x29

    if-ne v2, v7, :cond_32

    goto :goto_6

    .line 343
    :cond_32
    new-instance v2, Lcom/sun/mail/iap/ParsingException;

    .line 344
    nop

    .line 343
    const-string v4, "BODYSTRUCTURE parse error: missing ``)\'\' at end of disposition"

    invoke-direct {v2, v4}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 346
    :cond_33
    const/16 v2, 0x4e

    if-eq v3, v2, :cond_35

    const/16 v2, 0x6e

    if-ne v3, v2, :cond_34

    goto :goto_5

    .line 351
    :cond_34
    new-instance v2, Lcom/sun/mail/iap/ParsingException;

    .line 352
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 353
    iget-object v5, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    const-string v5, "bad single part disposition, b "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 351
    invoke-direct {v2, v4}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 347
    :cond_35
    :goto_5
    sget-boolean v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v2, :cond_36

    .line 348
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 349
    :cond_36
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->skip(I)V

    .line 350
    nop

    .line 357
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v2

    const/16 v7, 0x29

    if-ne v2, v7, :cond_38

    .line 358
    sget-boolean v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v2, :cond_37

    .line 359
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 360
    :cond_37
    return-void

    .line 364
    :cond_38
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->peekByte()B

    move-result v2

    const/16 v6, 0x28

    if-ne v2, v6, :cond_39

    .line 365
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readStringList()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->language:[Ljava/lang/String;

    .line 366
    sget-boolean v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v2, :cond_3a

    .line 367
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 368
    iget-object v5, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->language:[Ljava/lang/String;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 367
    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 369
    goto :goto_7

    .line 370
    :cond_39
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v2

    .line 371
    .local v2, "l":Ljava/lang/String;
    if-eqz v2, :cond_3a

    .line 372
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aput-object v2, v5, v16

    .line 373
    .local v5, "la":[Ljava/lang/String;
    iput-object v5, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->language:[Ljava/lang/String;

    .line 374
    sget-boolean v6, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v6, :cond_3a

    .line 375
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 383
    .end local v2    # "l":Ljava/lang/String;
    .end local v5    # "la":[Ljava/lang/String;
    :cond_3a
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v2

    const/16 v4, 0x20

    if-eq v2, v4, :cond_3c

    .line 385
    sget-boolean v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v2, :cond_3b

    .line 386
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "DEBUG IMAP: all DONE"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 388
    .end local v3    # "b":B
    :cond_3b
    :goto_8
    return-void

    .line 384
    .restart local v3    # "b":B
    :cond_3c
    invoke-direct/range {p0 .. p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseBodyExtension(Lcom/sun/mail/iap/Response;)V

    goto :goto_7

    .line 309
    .end local v3    # "b":B
    .local v2, "bn":B
    :cond_3d
    new-instance v3, Lcom/sun/mail/iap/ParsingException;

    .line 310
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "BODYSTRUCTURE parse error: server erroneously included ``lines\'\' element with type "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 312
    iget-object v5, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 309
    invoke-direct {v3, v4}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 266
    .end local v2    # "bn":B
    :cond_3e
    new-instance v2, Lcom/sun/mail/iap/ParsingException;

    .line 267
    nop

    .line 266
    const-string v3, "BODYSTRUCTURE parse error: bad ``size\'\' element"

    invoke-direct {v2, v3}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 226
    :cond_3f
    new-instance v2, Lcom/sun/mail/iap/ParsingException;

    .line 227
    nop

    .line 226
    const-string v3, "BODYSTRUCTURE parse error: missing body content"

    invoke-direct {v2, v3}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 99
    :cond_40
    new-instance v2, Lcom/sun/mail/iap/ParsingException;

    .line 100
    nop

    .line 99
    const-string v3, "BODYSTRUCTURE parse error: missing ``(\'\' at start"

    invoke-direct {v2, v3}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private parseBodyExtension(Lcom/sun/mail/iap/Response;)V
    .locals 3
    .param p1, "r"    # Lcom/sun/mail/iap/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

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

    .line 444
    goto :goto_0

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

    .line 448
    :goto_0
    return-void
.end method

.method private parseParameters(Lcom/sun/mail/iap/Response;)Ljavax/mail/internet/ParameterList;
    .locals 7
    .param p1, "r"    # Lcom/sun/mail/iap/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .line 404
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 406
    const/4 v0, 0x0

    .line 407
    .local v0, "list":Ljavax/mail/internet/ParameterList;
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v1

    .line 408
    .local v1, "b":B
    const/16 v2, 0x28

    if-ne v1, v2, :cond_4

    .line 409
    new-instance v2, Ljavax/mail/internet/ParameterList;

    invoke-direct {v2}, Ljavax/mail/internet/ParameterList;-><init>()V

    move-object v0, v2

    .line 411
    :cond_0
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    move-result-object v2

    .line 412
    .local v2, "name":Ljava/lang/String;
    sget-boolean v3, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v3, :cond_1

    .line 413
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DEBUG IMAP: parameter name "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 414
    :cond_1
    if-eqz v2, :cond_3

    .line 419
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    move-result-object v3

    .line 420
    .local v3, "value":Ljava/lang/String;
    sget-boolean v4, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v4, :cond_2

    .line 421
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DEBUG IMAP: parameter value "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 422
    :cond_2
    invoke-virtual {v0, v2, v3}, Ljavax/mail/internet/ParameterList;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v2

    const/16 v3, 0x29

    if-ne v2, v3, :cond_0

    .line 424
    invoke-virtual {v0}, Ljavax/mail/internet/ParameterList;->combineSegments()V

    .line 425
    goto :goto_1

    .line 415
    .restart local v2    # "name":Ljava/lang/String;
    :cond_3
    new-instance v3, Lcom/sun/mail/iap/ParsingException;

    .line 416
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "BODYSTRUCTURE parse error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 417
    iget-object v5, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    const-string v5, "null name in parameter list"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 415
    invoke-direct {v3, v4}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 425
    .end local v2    # "name":Ljava/lang/String;
    :cond_4
    const/16 v2, 0x4e

    if-eq v1, v2, :cond_6

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_5

    goto :goto_0

    .line 430
    :cond_5
    new-instance v2, Lcom/sun/mail/iap/ParsingException;

    const-string v3, "Parameter list parse error"

    invoke-direct {v2, v3}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 426
    :cond_6
    :goto_0
    sget-boolean v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v2, :cond_7

    .line 427
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "DEBUG IMAP: parameter list NIL"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 428
    :cond_7
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/sun/mail/iap/Response;->skip(I)V

    .line 429
    nop

    .line 432
    :goto_1
    return-object v0
.end method


# virtual methods
.method public isMulti()Z
    .locals 2

    .line 391
    iget v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->processedType:I

    sget v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->MULTI:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNested()Z
    .locals 2

    .line 399
    iget v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->processedType:I

    sget v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->NESTED:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSingle()Z
    .locals 2

    .line 395
    iget v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->processedType:I

    sget v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->SINGLE:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
