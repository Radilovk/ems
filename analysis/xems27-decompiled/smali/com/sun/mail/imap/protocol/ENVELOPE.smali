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
    .locals 5
    .param p1, "r"    # Lcom/sun/mail/imap/protocol/FetchResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->date:Ljava/util/Date;

    .line 87
    sget-boolean v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->parseDebug:Z

    if-eqz v0, :cond_0

    .line 88
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "parse ENVELOPE"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 89
    :cond_0
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->msgno:I

    .line 91
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->skipSpaces()V

    .line 93
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v0

    const/16 v1, 0x28

    const-string v2, "ENVELOPE parse error"

    if-ne v0, v1, :cond_d

    .line 96
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 99
    :try_start_0
    sget-object v1, Lcom/sun/mail/imap/protocol/ENVELOPE;->mailDateFormat:Ljavax/mail/internet/MailDateFormat;

    invoke-virtual {v1, v0}, Ljavax/mail/internet/MailDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->date:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    :catch_0
    move-exception v1

    goto :goto_0

    .line 100
    :catch_1
    move-exception v1

    .line 108
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/sun/mail/imap/protocol/ENVELOPE;->parseDebug:Z

    if-eqz v1, :cond_2

    .line 109
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  Date: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->date:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 111
    :cond_2
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->subject:Ljava/lang/String;

    .line 112
    sget-boolean v1, Lcom/sun/mail/imap/protocol/ENVELOPE;->parseDebug:Z

    if-eqz v1, :cond_3

    .line 113
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  Subject: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->subject:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 114
    :cond_3
    sget-boolean v1, Lcom/sun/mail/imap/protocol/ENVELOPE;->parseDebug:Z

    if-eqz v1, :cond_4

    .line 115
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "  From addresses:"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 116
    :cond_4
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/ENVELOPE;->parseAddressList(Lcom/sun/mail/iap/Response;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->from:[Ljavax/mail/internet/InternetAddress;

    .line 117
    sget-boolean v1, Lcom/sun/mail/imap/protocol/ENVELOPE;->parseDebug:Z

    if-eqz v1, :cond_5

    .line 118
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "  Sender addresses:"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 119
    :cond_5
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/ENVELOPE;->parseAddressList(Lcom/sun/mail/iap/Response;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->sender:[Ljavax/mail/internet/InternetAddress;

    .line 120
    sget-boolean v1, Lcom/sun/mail/imap/protocol/ENVELOPE;->parseDebug:Z

    if-eqz v1, :cond_6

    .line 121
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "  Reply-To addresses:"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 122
    :cond_6
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/ENVELOPE;->parseAddressList(Lcom/sun/mail/iap/Response;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->replyTo:[Ljavax/mail/internet/InternetAddress;

    .line 123
    sget-boolean v1, Lcom/sun/mail/imap/protocol/ENVELOPE;->parseDebug:Z

    if-eqz v1, :cond_7

    .line 124
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "  To addresses:"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 125
    :cond_7
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/ENVELOPE;->parseAddressList(Lcom/sun/mail/iap/Response;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->to:[Ljavax/mail/internet/InternetAddress;

    .line 126
    sget-boolean v1, Lcom/sun/mail/imap/protocol/ENVELOPE;->parseDebug:Z

    if-eqz v1, :cond_8

    .line 127
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "  Cc addresses:"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 128
    :cond_8
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/ENVELOPE;->parseAddressList(Lcom/sun/mail/iap/Response;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->cc:[Ljavax/mail/internet/InternetAddress;

    .line 129
    sget-boolean v1, Lcom/sun/mail/imap/protocol/ENVELOPE;->parseDebug:Z

    if-eqz v1, :cond_9

    .line 130
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "  Bcc addresses:"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 131
    :cond_9
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/ENVELOPE;->parseAddressList(Lcom/sun/mail/iap/Response;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->bcc:[Ljavax/mail/internet/InternetAddress;

    .line 132
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->inReplyTo:Ljava/lang/String;

    .line 133
    sget-boolean v1, Lcom/sun/mail/imap/protocol/ENVELOPE;->parseDebug:Z

    if-eqz v1, :cond_a

    .line 134
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  In-Reply-To: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->inReplyTo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 135
    :cond_a
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->messageId:Ljava/lang/String;

    .line 136
    sget-boolean v1, Lcom/sun/mail/imap/protocol/ENVELOPE;->parseDebug:Z

    if-eqz v1, :cond_b

    .line 137
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  Message-ID: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->messageId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 139
    :cond_b
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v1

    const/16 v3, 0x29

    if-ne v1, v3, :cond_c

    .line 141
    return-void

    .line 140
    :cond_c
    new-instance v1, Lcom/sun/mail/iap/ParsingException;

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 94
    .end local v0    # "s":Ljava/lang/String;
    :cond_d
    new-instance v0, Lcom/sun/mail/iap/ParsingException;

    invoke-direct {v0, v2}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseAddressList(Lcom/sun/mail/iap/Response;)[Ljavax/mail/internet/InternetAddress;
    .locals 8
    .param p1, "r"    # Lcom/sun/mail/iap/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .line 145
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 147
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v0

    .line 148
    .local v0, "b":B
    const/4 v1, 0x0

    const/16 v2, 0x28

    if-ne v0, v2, :cond_4

    .line 154
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->peekByte()B

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0x29

    if-ne v2, v4, :cond_0

    .line 155
    invoke-virtual {p1, v3}, Lcom/sun/mail/iap/Response;->skip(I)V

    .line 156
    return-object v1

    .line 159
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v1

    .line 162
    .local v2, "v":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/internet/InternetAddress;>;"
    :cond_1
    new-instance v1, Lcom/sun/mail/imap/protocol/IMAPAddress;

    invoke-direct {v1, p1}, Lcom/sun/mail/imap/protocol/IMAPAddress;-><init>(Lcom/sun/mail/iap/Response;)V

    .line 163
    .local v1, "a":Lcom/sun/mail/imap/protocol/IMAPAddress;
    sget-boolean v5, Lcom/sun/mail/imap/protocol/ENVELOPE;->parseDebug:Z

    if-eqz v5, :cond_2

    .line 164
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "    Address: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 166
    :cond_2
    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPAddress;->isEndOfGroup()Z

    move-result v5

    if-nez v5, :cond_3

    .line 167
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    .end local v1    # "a":Lcom/sun/mail/imap/protocol/IMAPAddress;
    :cond_3
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->peekByte()B

    move-result v1

    if-ne v1, v4, :cond_1

    .line 171
    invoke-virtual {p1, v3}, Lcom/sun/mail/iap/Response;->skip(I)V

    .line 173
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljavax/mail/internet/InternetAddress;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljavax/mail/internet/InternetAddress;

    return-object v1

    .line 174
    .end local v2    # "v":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/internet/InternetAddress;>;"
    :cond_4
    const/16 v2, 0x4e

    if-eq v0, v2, :cond_6

    const/16 v2, 0x6e

    if-ne v0, v2, :cond_5

    goto :goto_0

    .line 178
    :cond_5
    new-instance v1, Lcom/sun/mail/iap/ParsingException;

    const-string v2, "ADDRESS parse error"

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 175
    :cond_6
    :goto_0
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/sun/mail/iap/Response;->skip(I)V

    .line 176
    return-object v1
.end method
