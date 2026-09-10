.class public Lcom/sun/mail/imap/protocol/MailboxInfo;
.super Ljava/lang/Object;
.source "MailboxInfo.java"


# instance fields
.field public availableFlags:Ljavax/mail/Flags;

.field public first:I

.field public highestmodseq:J

.field public mode:I

.field public permanentFlags:Ljavax/mail/Flags;

.field public recent:I

.field public responses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sun/mail/imap/protocol/IMAPResponse;",
            ">;"
        }
    .end annotation
.end field

.field public total:I

.field public uidnext:J

.field public uidvalidity:J


# direct methods
.method public constructor <init>([Lcom/sun/mail/iap/Response;)V
    .locals 7
    .param p1, "r"    # [Lcom/sun/mail/iap/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->availableFlags:Ljavax/mail/Flags;

    .line 61
    iput-object v0, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->permanentFlags:Ljavax/mail/Flags;

    .line 63
    const/4 v1, -0x1

    iput v1, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->total:I

    .line 65
    iput v1, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->recent:I

    .line 67
    iput v1, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->first:I

    .line 69
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->uidvalidity:J

    .line 71
    iput-wide v1, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->uidnext:J

    .line 73
    iput-wide v1, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->highestmodseq:J

    .line 87
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_2

    .line 155
    .end local v1    # "i":I
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->permanentFlags:Ljavax/mail/Flags;

    if-nez v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->availableFlags:Ljavax/mail/Flags;

    if-eqz v0, :cond_0

    .line 157
    new-instance v1, Ljavax/mail/Flags;

    invoke-direct {v1, v0}, Ljavax/mail/Flags;-><init>(Ljavax/mail/Flags;)V

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->permanentFlags:Ljavax/mail/Flags;

    goto :goto_1

    .line 159
    :cond_0
    new-instance v0, Ljavax/mail/Flags;

    invoke-direct {v0}, Ljavax/mail/Flags;-><init>()V

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->permanentFlags:Ljavax/mail/Flags;

    .line 161
    :cond_1
    :goto_1
    return-void

    .line 88
    .restart local v1    # "i":I
    :cond_2
    aget-object v2, p1, v1

    if-eqz v2, :cond_13

    aget-object v2, p1, v1

    instance-of v2, v2, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v2, :cond_3

    .line 89
    goto/16 :goto_4

    .line 91
    :cond_3
    aget-object v2, p1, v1

    check-cast v2, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 93
    .local v2, "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    const-string v3, "EXISTS"

    invoke-virtual {v2, v3}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 94
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->getNumber()I

    move-result v3

    iput v3, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->total:I

    .line 95
    aput-object v0, p1, v1

    .line 96
    goto/16 :goto_4

    :cond_4
    const-string v3, "RECENT"

    invoke-virtual {v2, v3}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 97
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->getNumber()I

    move-result v3

    iput v3, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->recent:I

    .line 98
    aput-object v0, p1, v1

    .line 99
    goto/16 :goto_4

    :cond_5
    const-string v3, "FLAGS"

    invoke-virtual {v2, v3}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 100
    new-instance v3, Lcom/sun/mail/imap/protocol/FLAGS;

    invoke-direct {v3, v2}, Lcom/sun/mail/imap/protocol/FLAGS;-><init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V

    iput-object v3, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->availableFlags:Ljavax/mail/Flags;

    .line 101
    aput-object v0, p1, v1

    .line 102
    goto/16 :goto_4

    :cond_6
    const-string v3, "VANISHED"

    invoke-virtual {v2, v3}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 103
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->responses:Ljava/util/List;

    if-nez v3, :cond_7

    .line 104
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->responses:Ljava/util/List;

    .line 105
    :cond_7
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->responses:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    aput-object v0, p1, v1

    .line 107
    goto/16 :goto_4

    :cond_8
    const-string v3, "FETCH"

    invoke-virtual {v2, v3}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 108
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->responses:Ljava/util/List;

    if-nez v3, :cond_9

    .line 109
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->responses:Ljava/util/List;

    .line 110
    :cond_9
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->responses:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    aput-object v0, p1, v1

    goto/16 :goto_3

    .line 112
    :cond_a
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->isUnTagged()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->isOK()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 121
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->skipSpaces()V

    .line 123
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readByte()B

    move-result v3

    const/16 v4, 0x5b

    if-eq v3, v4, :cond_b

    .line 124
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->reset()V

    .line 125
    goto :goto_4

    .line 128
    :cond_b
    const/4 v3, 0x1

    .line 129
    .local v3, "handled":Z
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtom()Ljava/lang/String;

    move-result-object v4

    .line 130
    .local v4, "s":Ljava/lang/String;
    const-string v5, "UNSEEN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 131
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readNumber()I

    move-result v5

    iput v5, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->first:I

    goto :goto_2

    .line 132
    :cond_c
    const-string v5, "UIDVALIDITY"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 133
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->uidvalidity:J

    goto :goto_2

    .line 134
    :cond_d
    const-string v5, "PERMANENTFLAGS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 135
    new-instance v5, Lcom/sun/mail/imap/protocol/FLAGS;

    invoke-direct {v5, v2}, Lcom/sun/mail/imap/protocol/FLAGS;-><init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V

    iput-object v5, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->permanentFlags:Ljavax/mail/Flags;

    goto :goto_2

    .line 136
    :cond_e
    const-string v5, "UIDNEXT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 137
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->uidnext:J

    goto :goto_2

    .line 138
    :cond_f
    const-string v5, "HIGHESTMODSEQ"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 139
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->highestmodseq:J

    goto :goto_2

    .line 141
    :cond_10
    const/4 v3, 0x0

    .line 143
    :goto_2
    if-eqz v3, :cond_11

    .line 144
    aput-object v0, p1, v1

    goto :goto_4

    .line 146
    :cond_11
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->reset()V

    goto :goto_4

    .line 112
    .end local v3    # "handled":Z
    .end local v4    # "s":Ljava/lang/String;
    :cond_12
    :goto_3
    nop

    .line 87
    .end local v2    # "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    :cond_13
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method
