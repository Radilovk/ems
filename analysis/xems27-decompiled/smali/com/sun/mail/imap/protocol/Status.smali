.class public Lcom/sun/mail/imap/protocol/Status;
.super Ljava/lang/Object;
.source "Status.java"


# static fields
.field static final standardItems:[Ljava/lang/String;


# instance fields
.field public highestmodseq:J

.field public items:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mbox:Ljava/lang/String;

.field public recent:I

.field public total:I

.field public uidnext:J

.field public uidvalidity:J

.field public unseen:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 67
    const-string v0, "MESSAGES"

    const-string v1, "RECENT"

    const-string v2, "UNSEEN"

    const-string v3, "UIDNEXT"

    const-string v4, "UIDVALIDITY"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 66
    sput-object v0, Lcom/sun/mail/imap/protocol/Status;->standardItems:[Ljava/lang/String;

    .line 67
    return-void
.end method

.method public constructor <init>(Lcom/sun/mail/iap/Response;)V
    .locals 7
    .param p1, "r"    # Lcom/sun/mail/iap/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/Status;->mbox:Ljava/lang/String;

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/mail/imap/protocol/Status;->total:I

    .line 59
    iput v0, p0, Lcom/sun/mail/imap/protocol/Status;->recent:I

    .line 60
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/sun/mail/imap/protocol/Status;->uidnext:J

    .line 61
    iput-wide v1, p0, Lcom/sun/mail/imap/protocol/Status;->uidvalidity:J

    .line 62
    iput v0, p0, Lcom/sun/mail/imap/protocol/Status;->unseen:I

    .line 63
    iput-wide v1, p0, Lcom/sun/mail/imap/protocol/Status;->highestmodseq:J

    .line 70
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readAtomString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/Status;->mbox:Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 75
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x1

    .line 77
    .local v1, "onlySpaces":Z
    nop

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->peekByte()B

    move-result v2

    const/16 v3, 0x28

    if-eq v2, v3, :cond_2

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->peekByte()B

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 78
    :cond_1
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v2

    int-to-char v2, v2

    .line 80
    .local v2, "next":C
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 82
    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    .line 83
    const/4 v1, 0x0

    goto :goto_0

    .line 87
    .end local v2    # "next":C
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sun/mail/imap/protocol/Status;->mbox:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/mail/imap/protocol/Status;->mbox:Ljava/lang/String;

    .line 91
    :cond_3
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v2

    if-ne v2, v3, :cond_c

    .line 95
    :cond_4
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "attr":Ljava/lang/String;
    const-string v3, "MESSAGES"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 97
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readNumber()I

    move-result v3

    iput v3, p0, Lcom/sun/mail/imap/protocol/Status;->total:I

    goto :goto_2

    .line 98
    :cond_5
    const-string v3, "RECENT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 99
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readNumber()I

    move-result v3

    iput v3, p0, Lcom/sun/mail/imap/protocol/Status;->recent:I

    goto :goto_2

    .line 100
    :cond_6
    const-string v3, "UIDNEXT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 101
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sun/mail/imap/protocol/Status;->uidnext:J

    goto :goto_2

    .line 102
    :cond_7
    const-string v3, "UIDVALIDITY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 103
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sun/mail/imap/protocol/Status;->uidvalidity:J

    goto :goto_2

    .line 104
    :cond_8
    const-string v3, "UNSEEN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 105
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readNumber()I

    move-result v3

    iput v3, p0, Lcom/sun/mail/imap/protocol/Status;->unseen:I

    goto :goto_2

    .line 106
    :cond_9
    const-string v3, "HIGHESTMODSEQ"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 107
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sun/mail/imap/protocol/Status;->highestmodseq:J

    goto :goto_2

    .line 109
    :cond_a
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/Status;->items:Ljava/util/Map;

    if-nez v3, :cond_b

    .line 110
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/sun/mail/imap/protocol/Status;->items:Ljava/util/Map;

    .line 111
    :cond_b
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/Status;->items:Ljava/util/Map;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 112
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readLong()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 111
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .end local v2    # "attr":Ljava/lang/String;
    :goto_2
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v2

    const/16 v3, 0x29

    if-ne v2, v3, :cond_4

    .line 115
    return-void

    .line 92
    :cond_c
    new-instance v2, Lcom/sun/mail/iap/ParsingException;

    const-string v3, "parse error in STATUS"

    invoke-direct {v2, v3}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static add(Lcom/sun/mail/imap/protocol/Status;Lcom/sun/mail/imap/protocol/Status;)V
    .locals 6
    .param p0, "s1"    # Lcom/sun/mail/imap/protocol/Status;
    .param p1, "s2"    # Lcom/sun/mail/imap/protocol/Status;

    .line 146
    iget v0, p1, Lcom/sun/mail/imap/protocol/Status;->total:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 147
    iput v0, p0, Lcom/sun/mail/imap/protocol/Status;->total:I

    .line 148
    :cond_0
    iget v0, p1, Lcom/sun/mail/imap/protocol/Status;->recent:I

    if-eq v0, v1, :cond_1

    .line 149
    iput v0, p0, Lcom/sun/mail/imap/protocol/Status;->recent:I

    .line 150
    :cond_1
    iget-wide v2, p1, Lcom/sun/mail/imap/protocol/Status;->uidnext:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    .line 151
    iput-wide v2, p0, Lcom/sun/mail/imap/protocol/Status;->uidnext:J

    .line 152
    :cond_2
    iget-wide v2, p1, Lcom/sun/mail/imap/protocol/Status;->uidvalidity:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    .line 153
    iput-wide v2, p0, Lcom/sun/mail/imap/protocol/Status;->uidvalidity:J

    .line 154
    :cond_3
    iget v0, p1, Lcom/sun/mail/imap/protocol/Status;->unseen:I

    if-eq v0, v1, :cond_4

    .line 155
    iput v0, p0, Lcom/sun/mail/imap/protocol/Status;->unseen:I

    .line 156
    :cond_4
    iget-wide v0, p1, Lcom/sun/mail/imap/protocol/Status;->highestmodseq:J

    cmp-long v2, v0, v4

    if-eqz v2, :cond_5

    .line 157
    iput-wide v0, p0, Lcom/sun/mail/imap/protocol/Status;->highestmodseq:J

    .line 158
    :cond_5
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/Status;->items:Ljava/util/Map;

    if-nez v0, :cond_6

    .line 159
    iget-object v0, p1, Lcom/sun/mail/imap/protocol/Status;->items:Ljava/util/Map;

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/Status;->items:Ljava/util/Map;

    goto :goto_0

    .line 160
    :cond_6
    iget-object v1, p1, Lcom/sun/mail/imap/protocol/Status;->items:Ljava/util/Map;

    if-eqz v1, :cond_7

    .line 161
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 162
    :cond_7
    :goto_0
    return-void
.end method


# virtual methods
.method public getItem(Ljava/lang/String;)J
    .locals 4
    .param p1, "item"    # Ljava/lang/String;

    .line 125
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 127
    const-wide/16 v0, -0x1

    .line 128
    .local v0, "ret":J
    iget-object v2, p0, Lcom/sun/mail/imap/protocol/Status;->items:Ljava/util/Map;

    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    move-object v3, v2

    .local v3, "v":Ljava/lang/Long;
    if-eqz v2, :cond_0

    .line 129
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    .line 130
    .end local v3    # "v":Ljava/lang/Long;
    :cond_0
    const-string v2, "MESSAGES"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    iget v2, p0, Lcom/sun/mail/imap/protocol/Status;->total:I

    int-to-long v0, v2

    goto :goto_0

    .line 132
    :cond_1
    const-string v2, "RECENT"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 133
    iget v2, p0, Lcom/sun/mail/imap/protocol/Status;->recent:I

    int-to-long v0, v2

    goto :goto_0

    .line 134
    :cond_2
    const-string v2, "UIDNEXT"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 135
    iget-wide v0, p0, Lcom/sun/mail/imap/protocol/Status;->uidnext:J

    goto :goto_0

    .line 136
    :cond_3
    const-string v2, "UIDVALIDITY"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 137
    iget-wide v0, p0, Lcom/sun/mail/imap/protocol/Status;->uidvalidity:J

    goto :goto_0

    .line 138
    :cond_4
    const-string v2, "UNSEEN"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 139
    iget v2, p0, Lcom/sun/mail/imap/protocol/Status;->unseen:I

    int-to-long v0, v2

    goto :goto_0

    .line 140
    :cond_5
    const-string v2, "HIGHESTMODSEQ"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 141
    iget-wide v0, p0, Lcom/sun/mail/imap/protocol/Status;->highestmodseq:J

    .line 142
    :cond_6
    :goto_0
    return-wide v0
.end method
