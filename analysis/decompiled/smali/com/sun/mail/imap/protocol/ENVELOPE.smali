.class public Lcom/sun/mail/imap/protocol/ENVELOPE;
.super Ljava/lang/Object;
.source "ENVELOPE.java"

# interfaces
.implements Lcom/sun/mail/imap/protocol/Item;


# static fields
.field private static mailDateFormat:Ljavax/mail/internet/MailDateFormat;

.field static final name:[C

.field private static final parseDebug:Z


# instance fields
.field public bcc:[Ljavax/mail/internet/InternetAddress;

.field public cc:[Ljavax/mail/internet/InternetAddress;

.field public date:Ljava/util/Date;

.field public from:[Ljavax/mail/internet/InternetAddress;

.field public inReplyTo:Ljava/lang/String;

.field public messageId:Ljava/lang/String;

.field public msgno:I

.field public replyTo:[Ljavax/mail/internet/InternetAddress;

.field public sender:[Ljavax/mail/internet/InternetAddress;

.field public subject:Ljava/lang/String;

.field public to:[Ljavax/mail/internet/InternetAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    const/16 v0, 0x8

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->name:[C

    .line 80
    new-instance v0, Ljavax/mail/internet/MailDateFormat;

    invoke-direct {v0}, Ljavax/mail/internet/MailDateFormat;-><init>()V

    sput-object v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->mailDateFormat:Ljavax/mail/internet/MailDateFormat;

    .line 84
    const-string v0, "mail.imap.parse.debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    .line 83
    sput-boolean v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->parseDebug:Z

    .line 84
    return-void

    .line 65
    :array_0
    .array-data 2
        0x45s
        0x4es
        0x56s
        0x45s
        0x4cs
        0x4fs
        0x50s
        0x45s
    .end array-data
.end method

.method public constructor <init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V
    .locals 4
    .param p1, "r"    # Lcom/sun/mail/imap/protocol/FetchResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->date:Ljava/util/Date;

    .line 87
    sget-boolean v1, Lcom/sun/mail/imap/protocol/ENVELOPE;->parseDebug:Z

    if-eqz v1, :cond_0

    .line 88
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "parse ENVELOPE"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 89
    :cond_0
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v1

    iput v1, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->msgno:I

    .line 91
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->skipSpaces()V

    .line 93
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v1

    const/16 v2, 0x28

    if-eq v1, v2, :cond_1

    .line 94
    new-instance v1, Lcom/sun/mail/iap/ParsingException;

    const-string v2, "ENVELOPE parse error"

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_1
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 99
    :try_start_0
    sget-object v1, Lcom/sun/mail/imap/protocol/ENVELOPE;->mailDateFormat:Ljavax/mail/internet/MailDateFormat;

    invoke-virtual {v1, v0}, Ljavax/mail/internet/MailDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->date:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :cond_2
    :goto_0
    sget-boolean v1, Lcom/sun/mail/imap/protocol/ENVELOPE;->parseDebug:Z

    if-eqz v1, :cond_3

    .line 109
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  Date: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->date:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 111
    :cond_3
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->subject:Ljava/lang/String;

    .line 112
    sget-boolean v1, Lcom/sun/mail/imap/protocol/ENVELOPE;->parseDebug:Z

    if-eqz v1, :cond_4

    .line 113
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  Subject: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->subject:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 114
    :cond_4
    sget-boolean v1, Lcom/sun/mail/imap/protocol/ENVELOPE;->parseDebug:Z

    if-eqz v1, :cond_5

    .line 115
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "  From addresses:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 116
    :cond_5
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/ENVELOPE;->parseAddressList(Lcom/sun/mail/iap/Response;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->from:[Ljavax/mail/internet/InternetAddress;

    .line 117
    sget-boolean v1, Lcom/sun/mail/imap/protocol/ENVELOPE;->parseDebug:Z

    if-eqz v1, :cond_6

    .line 118
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "  Sender addresses:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 119
    :cond_6
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/ENVELOPE;->parseAddressList(Lcom/sun/mail/iap/Response;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->sender:[Ljavax/mail/internet/InternetAddress;

    .line 120
    sget-boolean v1, Lcom/sun/mail/imap/protocol/ENVELOPE;->parseDebug:Z

    if-eqz v1, :cond_7

    .line 121
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "  Reply-To addresses:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 122
    :cond_7
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/ENVELOPE;->parseAddressList(Lcom/sun/mail/iap/Response;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->replyTo:[Ljavax/mail/internet/InternetAddress;

    .line 123
    sget-boolean v1, Lcom/sun/mail/imap/protocol/ENVELOPE;->parseDebug:Z

    if-eqz v1, :cond_8

    .line 124
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "  To addresses:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 125
    :cond_8
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/ENVELOPE;->parseAddressList(Lcom/sun/mail/iap/Response;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->to:[Ljavax/mail/internet/InternetAddress;

    .line 126
    sget-boolean v1, Lcom/sun/mail/imap/protocol/ENVELOPE;->parseDebug:Z

    if-eqz v1, :cond_9

    .line 127
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "  Cc addresses:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 128
    :cond_9
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/ENVELOPE;->parseAddressList(Lcom/sun/mail/iap/Response;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->cc:[Ljavax/mail/internet/InternetAddress;

    .line 129
    sget-boolean v1, Lcom/sun/mail/imap/protocol/ENVELOPE;->parseDebug:Z

    if-eqz v1, :cond_a

    .line 130
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "  Bcc addresses:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 131
    :cond_a
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/ENVELOPE;->parseAddressList(Lcom/sun/mail/iap/Response;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->bcc:[Ljavax/mail/internet/InternetAddress;

    .line 132
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->inReplyTo:Ljava/lang/String;

    .line 133
    sget-boolean v1, Lcom/sun/mail/imap/protocol/ENVELOPE;->parseDebug:Z

    if-eqz v1, :cond_b

    .line 134
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  In-Reply-To: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->inReplyTo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 135
    :cond_b
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->messageId:Ljava/lang/String;

    .line 136
    sget-boolean v1, Lcom/sun/mail/imap/protocol/ENVELOPE;->parseDebug:Z

    if-eqz v1, :cond_c

    .line 137
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  Message-ID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->messageId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 139
    :cond_c
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v1

    const/16 v2, 0x29

    if-eq v1, v2, :cond_d

    .line 140
    new-instance v1, Lcom/sun/mail/iap/ParsingException;

    const-string v2, "ENVELOPE parse error"

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 141
    :cond_d
    return-void

    .line 101
    :catch_0
    move-exception v1

    goto/16 :goto_0

    .line 100
    :catch_1
    move-exception v1

    goto/16 :goto_0
.end method

.method private parseAddressList(Lcom/sun/mail/iap/Response;)[Ljavax/mail/internet/InternetAddress;
    .locals 8
    .param p1, "r"    # Lcom/sun/mail/iap/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/16 v7, 0x29

    const/4 v6, 0x1

    .line 145
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 147
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v1

    .line 148
    .local v1, "b":B
    const/16 v4, 0x28

    if-ne v1, v4, :cond_4

    .line 154
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->peekByte()B

    move-result v4

    if-ne v4, v7, :cond_0

    .line 155
    invoke-virtual {p1, v6}, Lcom/sun/mail/iap/Response;->skip(I)V

    .line 176
    :goto_0
    return-object v3

    .line 159
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v2, "v":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/internet/InternetAddress;>;"
    :cond_1
    new-instance v0, Lcom/sun/mail/imap/protocol/IMAPAddress;

    invoke-direct {v0, p1}, Lcom/sun/mail/imap/protocol/IMAPAddress;-><init>(Lcom/sun/mail/iap/Response;)V

    .line 163
    .local v0, "a":Lcom/sun/mail/imap/protocol/IMAPAddress;
    sget-boolean v3, Lcom/sun/mail/imap/protocol/ENVELOPE;->parseDebug:Z

    if-eqz v3, :cond_2

    .line 164
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "    Address: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 166
    :cond_2
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPAddress;->isEndOfGroup()Z

    move-result v3

    if-nez v3, :cond_3

    .line 167
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    :cond_3
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->peekByte()B

    move-result v3

    if-ne v3, v7, :cond_1

    .line 171
    invoke-virtual {p1, v6}, Lcom/sun/mail/iap/Response;->skip(I)V

    .line 173
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljavax/mail/internet/InternetAddress;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljavax/mail/internet/InternetAddress;

    goto :goto_0

    .line 174
    .end local v0    # "a":Lcom/sun/mail/imap/protocol/IMAPAddress;
    .end local v2    # "v":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/internet/InternetAddress;>;"
    :cond_4
    const/16 v4, 0x4e

    if-eq v1, v4, :cond_5

    const/16 v4, 0x6e

    if-ne v1, v4, :cond_6

    .line 175
    :cond_5
    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Lcom/sun/mail/iap/Response;->skip(I)V

    goto :goto_0

    .line 178
    :cond_6
    new-instance v3, Lcom/sun/mail/iap/ParsingException;

    const-string v4, "ADDRESS parse error"

    invoke-direct {v3, v4}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
