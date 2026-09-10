.class public Lcom/sun/mail/imap/protocol/INTERNALDATE;
.super Ljava/lang/Object;
.source "INTERNALDATE.java"

# interfaces
.implements Lcom/sun/mail/imap/protocol/Item;


# static fields
.field private static df:Ljava/text/SimpleDateFormat;

.field private static mailDateFormat:Ljavax/mail/internet/MailDateFormat;

.field static final name:[C


# instance fields
.field protected date:Ljava/util/Date;

.field public msgno:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 64
    const/16 v0, 0xc

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    .line 63
    sput-object v0, Lcom/sun/mail/imap/protocol/INTERNALDATE;->name:[C

    .line 75
    new-instance v0, Ljavax/mail/internet/MailDateFormat;

    invoke-direct {v0}, Ljavax/mail/internet/MailDateFormat;-><init>()V

    sput-object v0, Lcom/sun/mail/imap/protocol/INTERNALDATE;->mailDateFormat:Ljavax/mail/internet/MailDateFormat;

    .line 105
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MMM-yyyy HH:mm:ss "

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 102
    sput-object v0, Lcom/sun/mail/imap/protocol/INTERNALDATE;->df:Ljava/text/SimpleDateFormat;

    .line 105
    return-void

    .line 64
    :array_0
    .array-data 2
        0x49s
        0x4es
        0x54s
        0x45s
        0x52s
        0x4es
        0x41s
        0x4cs
        0x44s
        0x41s
        0x54s
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
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v2

    iput v2, p0, Lcom/sun/mail/imap/protocol/INTERNALDATE;->msgno:I

    .line 85
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->skipSpaces()V

    .line 86
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "s":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 88
    new-instance v2, Lcom/sun/mail/iap/ParsingException;

    const-string v3, "INTERNALDATE is NIL"

    invoke-direct {v2, v3}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 90
    :cond_0
    :try_start_0
    sget-object v2, Lcom/sun/mail/imap/protocol/INTERNALDATE;->mailDateFormat:Ljavax/mail/internet/MailDateFormat;

    invoke-virtual {v2, v1}, Ljavax/mail/internet/MailDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/mail/imap/protocol/INTERNALDATE;->date:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "pex":Ljava/text/ParseException;
    new-instance v2, Lcom/sun/mail/iap/ParsingException;

    const-string v3, "INTERNALDATE parse error"

    invoke-direct {v2, v3}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static format(Ljava/util/Date;)Ljava/lang/String;
    .locals 11
    .param p0, "d"    # Ljava/util/Date;

    .prologue
    const/16 v10, 0xa

    .line 125
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 126
    .local v4, "sb":Ljava/lang/StringBuffer;
    sget-object v7, Lcom/sun/mail/imap/protocol/INTERNALDATE;->df:Ljava/text/SimpleDateFormat;

    monitor-enter v7

    .line 127
    :try_start_0
    sget-object v6, Lcom/sun/mail/imap/protocol/INTERNALDATE;->df:Ljava/text/SimpleDateFormat;

    new-instance v8, Ljava/text/FieldPosition;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {v6, p0, v4, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 126
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    .line 132
    .local v5, "tz":Ljava/util/TimeZone;
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    .line 133
    .local v0, "offset":I
    div-int/lit8 v6, v0, 0x3c

    div-int/lit16 v3, v6, 0x3e8

    .line 134
    .local v3, "rawOffsetInMins":I
    if-gez v3, :cond_0

    .line 135
    const/16 v6, 0x2d

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 136
    neg-int v3, v3

    .line 140
    :goto_0
    div-int/lit8 v1, v3, 0x3c

    .line 141
    .local v1, "offsetInHrs":I
    rem-int/lit8 v2, v3, 0x3c

    .line 143
    .local v2, "offsetInMins":I
    div-int/lit8 v6, v1, 0xa

    invoke-static {v6, v10}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 144
    rem-int/lit8 v6, v1, 0xa

    invoke-static {v6, v10}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 145
    div-int/lit8 v6, v2, 0xa

    invoke-static {v6, v10}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 146
    rem-int/lit8 v6, v2, 0xa

    invoke-static {v6, v10}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 148
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 126
    .end local v0    # "offset":I
    .end local v1    # "offsetInHrs":I
    .end local v2    # "offsetInMins":I
    .end local v3    # "rawOffsetInMins":I
    .end local v5    # "tz":Ljava/util/TimeZone;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 138
    .restart local v0    # "offset":I
    .restart local v3    # "rawOffsetInMins":I
    .restart local v5    # "tz":Ljava/util/TimeZone;
    :cond_0
    const/16 v6, 0x2b

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/INTERNALDATE;->date:Ljava/util/Date;

    return-object v0
.end method
