.class public final Lcom/sun/mail/imap/Utility;
.super Ljava/lang/Object;
.source "Utility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/mail/imap/Utility$Condition;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResyncUIDSet(Lcom/sun/mail/imap/ResyncData;)[Lcom/sun/mail/imap/protocol/UIDSet;
    .locals 1
    .param p0, "rd"    # Lcom/sun/mail/imap/ResyncData;

    .line 232
    invoke-virtual {p0}, Lcom/sun/mail/imap/ResyncData;->getUIDSet()[Lcom/sun/mail/imap/protocol/UIDSet;

    move-result-object v0

    return-object v0
.end method

.method public static toMessageSet([Ljavax/mail/Message;Lcom/sun/mail/imap/Utility$Condition;)[Lcom/sun/mail/imap/protocol/MessageSet;
    .locals 8
    .param p0, "msgs"    # [Ljavax/mail/Message;
    .param p1, "cond"    # Lcom/sun/mail/imap/Utility$Condition;

    .line 80
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    .line 84
    .local v0, "v":Ljava/util/Vector;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-lt v2, v3, :cond_1

    .line 124
    .end local v2    # "i":I
    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    const/4 v1, 0x0

    return-object v1

    .line 127
    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Lcom/sun/mail/imap/protocol/MessageSet;

    .line 128
    .local v1, "sets":[Lcom/sun/mail/imap/protocol/MessageSet;
    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 129
    return-object v1

    .line 85
    .end local v1    # "sets":[Lcom/sun/mail/imap/protocol/MessageSet;
    .restart local v2    # "i":I
    :cond_1
    aget-object v3, p0, v2

    check-cast v3, Lcom/sun/mail/imap/IMAPMessage;

    .line 86
    .local v3, "msg":Lcom/sun/mail/imap/IMAPMessage;
    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 87
    goto :goto_3

    .line 89
    :cond_2
    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v4

    .line 91
    .local v4, "current":I
    if-eqz p1, :cond_3

    invoke-interface {p1, v3}, Lcom/sun/mail/imap/Utility$Condition;->test(Lcom/sun/mail/imap/IMAPMessage;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 92
    goto :goto_3

    .line 94
    :cond_3
    new-instance v5, Lcom/sun/mail/imap/protocol/MessageSet;

    invoke-direct {v5}, Lcom/sun/mail/imap/protocol/MessageSet;-><init>()V

    .line 95
    .local v5, "set":Lcom/sun/mail/imap/protocol/MessageSet;
    iput v4, v5, Lcom/sun/mail/imap/protocol/MessageSet;->start:I

    .line 98
    :goto_1
    add-int/lit8 v2, v2, 0x1

    array-length v6, p0

    if-lt v2, v6, :cond_4

    goto :goto_2

    .line 100
    :cond_4
    aget-object v6, p0, v2

    move-object v3, v6

    check-cast v3, Lcom/sun/mail/imap/IMAPMessage;

    .line 102
    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 103
    goto :goto_1

    .line 104
    :cond_5
    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v6

    .line 107
    .local v6, "next":I
    if-eqz p1, :cond_6

    invoke-interface {p1, v3}, Lcom/sun/mail/imap/Utility$Condition;->test(Lcom/sun/mail/imap/IMAPMessage;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 108
    goto :goto_1

    .line 110
    :cond_6
    add-int/lit8 v7, v4, 0x1

    if-ne v6, v7, :cond_7

    .line 111
    move v4, v6

    goto :goto_1

    .line 116
    :cond_7
    add-int/lit8 v2, v2, -0x1

    .line 117
    nop

    .line 120
    .end local v6    # "next":I
    :goto_2
    iput v4, v5, Lcom/sun/mail/imap/protocol/MessageSet;->end:I

    .line 121
    invoke-virtual {v0, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 84
    .end local v4    # "current":I
    .end local v5    # "set":Lcom/sun/mail/imap/protocol/MessageSet;
    :goto_3
    add-int/2addr v2, v1

    goto :goto_0
.end method

.method public static toMessageSetSorted([Ljavax/mail/Message;Lcom/sun/mail/imap/Utility$Condition;)[Lcom/sun/mail/imap/protocol/MessageSet;
    .locals 1
    .param p0, "msgs"    # [Ljavax/mail/Message;
    .param p1, "cond"    # Lcom/sun/mail/imap/Utility$Condition;

    .line 156
    invoke-virtual {p0}, [Ljavax/mail/Message;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object p0, v0

    check-cast p0, [Ljavax/mail/Message;

    .line 157
    nop

    .line 158
    new-instance v0, Lcom/sun/mail/imap/Utility$1;

    invoke-direct {v0}, Lcom/sun/mail/imap/Utility$1;-><init>()V

    .line 157
    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 164
    invoke-static {p0, p1}, Lcom/sun/mail/imap/Utility;->toMessageSet([Ljavax/mail/Message;Lcom/sun/mail/imap/Utility$Condition;)[Lcom/sun/mail/imap/protocol/MessageSet;

    move-result-object v0

    return-object v0
.end method

.method public static toUIDSet([Ljavax/mail/Message;)[Lcom/sun/mail/imap/protocol/UIDSet;
    .locals 12
    .param p0, "msgs"    # [Ljavax/mail/Message;

    .line 175
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    .line 179
    .local v0, "v":Ljava/util/Vector;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-lt v2, v3, :cond_1

    .line 212
    .end local v2    # "i":I
    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    const/4 v1, 0x0

    return-object v1

    .line 215
    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Lcom/sun/mail/imap/protocol/UIDSet;

    .line 216
    .local v1, "sets":[Lcom/sun/mail/imap/protocol/UIDSet;
    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 217
    return-object v1

    .line 180
    .end local v1    # "sets":[Lcom/sun/mail/imap/protocol/UIDSet;
    .restart local v2    # "i":I
    :cond_1
    aget-object v3, p0, v2

    check-cast v3, Lcom/sun/mail/imap/IMAPMessage;

    .line 181
    .local v3, "msg":Lcom/sun/mail/imap/IMAPMessage;
    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 182
    goto :goto_3

    .line 184
    :cond_2
    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->getUID()J

    move-result-wide v4

    .line 186
    .local v4, "current":J
    new-instance v6, Lcom/sun/mail/imap/protocol/UIDSet;

    invoke-direct {v6}, Lcom/sun/mail/imap/protocol/UIDSet;-><init>()V

    .line 187
    .local v6, "set":Lcom/sun/mail/imap/protocol/UIDSet;
    iput-wide v4, v6, Lcom/sun/mail/imap/protocol/UIDSet;->start:J

    .line 190
    :goto_1
    add-int/lit8 v2, v2, 0x1

    array-length v7, p0

    if-lt v2, v7, :cond_3

    goto :goto_2

    .line 192
    :cond_3
    aget-object v7, p0, v2

    move-object v3, v7

    check-cast v3, Lcom/sun/mail/imap/IMAPMessage;

    .line 194
    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 195
    goto :goto_1

    .line 196
    :cond_4
    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->getUID()J

    move-result-wide v7

    .line 198
    .local v7, "next":J
    const-wide/16 v9, 0x1

    add-long/2addr v9, v4

    cmp-long v11, v7, v9

    if-nez v11, :cond_5

    .line 199
    move-wide v4, v7

    goto :goto_1

    .line 204
    :cond_5
    add-int/lit8 v2, v2, -0x1

    .line 205
    nop

    .line 208
    .end local v7    # "next":J
    :goto_2
    iput-wide v4, v6, Lcom/sun/mail/imap/protocol/UIDSet;->end:J

    .line 209
    invoke-virtual {v0, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 179
    .end local v4    # "current":J
    .end local v6    # "set":Lcom/sun/mail/imap/protocol/UIDSet;
    :goto_3
    add-int/2addr v2, v1

    goto :goto_0
.end method
