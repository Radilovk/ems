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

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResyncUIDSet(Lcom/sun/mail/imap/ResyncData;)[Lcom/sun/mail/imap/protocol/UIDSet;
    .locals 1
    .param p0, "rd"    # Lcom/sun/mail/imap/ResyncData;

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/sun/mail/imap/ResyncData;->getUIDSet()[Lcom/sun/mail/imap/protocol/UIDSet;

    move-result-object v0

    return-object v0
.end method

.method public static toMessageSet([Ljavax/mail/Message;Lcom/sun/mail/imap/Utility$Condition;)[Lcom/sun/mail/imap/protocol/MessageSet;
    .locals 8
    .param p0, "msgs"    # [Ljavax/mail/Message;
    .param p1, "cond"    # Lcom/sun/mail/imap/Utility$Condition;

    .prologue
    .line 80
    new-instance v6, Ljava/util/Vector;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/Vector;-><init>(I)V

    .line 84
    .local v6, "v":Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v7, p0

    if-lt v1, v7, :cond_0

    .line 124
    invoke-virtual {v6}, Ljava/util/Vector;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 125
    const/4 v5, 0x0

    .line 129
    :goto_1
    return-object v5

    .line 85
    :cond_0
    aget-object v2, p0, v1

    check-cast v2, Lcom/sun/mail/imap/IMAPMessage;

    .line 86
    .local v2, "msg":Lcom/sun/mail/imap/IMAPMessage;
    invoke-virtual {v2}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 84
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    :cond_2
    invoke-virtual {v2}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v0

    .line 91
    .local v0, "current":I
    if-eqz p1, :cond_3

    invoke-interface {p1, v2}, Lcom/sun/mail/imap/Utility$Condition;->test(Lcom/sun/mail/imap/IMAPMessage;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 94
    :cond_3
    new-instance v4, Lcom/sun/mail/imap/protocol/MessageSet;

    invoke-direct {v4}, Lcom/sun/mail/imap/protocol/MessageSet;-><init>()V

    .line 95
    .local v4, "set":Lcom/sun/mail/imap/protocol/MessageSet;
    iput v0, v4, Lcom/sun/mail/imap/protocol/MessageSet;->start:I

    .line 98
    add-int/lit8 v1, v1, 0x1

    :goto_3
    array-length v7, p0

    if-lt v1, v7, :cond_4

    .line 120
    :goto_4
    iput v0, v4, Lcom/sun/mail/imap/protocol/MessageSet;->end:I

    .line 121
    invoke-virtual {v6, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2

    .line 100
    :cond_4
    aget-object v2, p0, v1

    .end local v2    # "msg":Lcom/sun/mail/imap/IMAPMessage;
    check-cast v2, Lcom/sun/mail/imap/IMAPMessage;

    .line 102
    .restart local v2    # "msg":Lcom/sun/mail/imap/IMAPMessage;
    invoke-virtual {v2}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 98
    :cond_5
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 104
    :cond_6
    invoke-virtual {v2}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v3

    .line 107
    .local v3, "next":I
    if-eqz p1, :cond_7

    invoke-interface {p1, v2}, Lcom/sun/mail/imap/Utility$Condition;->test(Lcom/sun/mail/imap/IMAPMessage;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 110
    :cond_7
    add-int/lit8 v7, v0, 0x1

    if-ne v3, v7, :cond_8

    .line 111
    move v0, v3

    goto :goto_5

    .line 116
    :cond_8
    add-int/lit8 v1, v1, -0x1

    .line 117
    goto :goto_4

    .line 127
    .end local v0    # "current":I
    .end local v2    # "msg":Lcom/sun/mail/imap/IMAPMessage;
    .end local v3    # "next":I
    .end local v4    # "set":Lcom/sun/mail/imap/protocol/MessageSet;
    :cond_9
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v7

    new-array v5, v7, [Lcom/sun/mail/imap/protocol/MessageSet;

    .line 128
    .local v5, "sets":[Lcom/sun/mail/imap/protocol/MessageSet;
    invoke-virtual {v6, v5}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static toMessageSetSorted([Ljavax/mail/Message;Lcom/sun/mail/imap/Utility$Condition;)[Lcom/sun/mail/imap/protocol/MessageSet;
    .locals 1
    .param p0, "msgs"    # [Ljavax/mail/Message;
    .param p1, "cond"    # Lcom/sun/mail/imap/Utility$Condition;

    .prologue
    .line 156
    invoke-virtual {p0}, [Ljavax/mail/Message;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "msgs":[Ljavax/mail/Message;
    check-cast p0, [Ljavax/mail/Message;

    .line 158
    .restart local p0    # "msgs":[Ljavax/mail/Message;
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

    .prologue
    .line 175
    new-instance v8, Ljava/util/Vector;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Ljava/util/Vector;-><init>(I)V

    .line 179
    .local v8, "v":Ljava/util/Vector;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v9, p0

    if-lt v2, v9, :cond_0

    .line 212
    invoke-virtual {v8}, Ljava/util/Vector;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 213
    const/4 v7, 0x0

    .line 217
    :goto_1
    return-object v7

    .line 180
    :cond_0
    aget-object v3, p0, v2

    check-cast v3, Lcom/sun/mail/imap/IMAPMessage;

    .line 181
    .local v3, "msg":Lcom/sun/mail/imap/IMAPMessage;
    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 179
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 184
    :cond_1
    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->getUID()J

    move-result-wide v0

    .line 186
    .local v0, "current":J
    new-instance v6, Lcom/sun/mail/imap/protocol/UIDSet;

    invoke-direct {v6}, Lcom/sun/mail/imap/protocol/UIDSet;-><init>()V

    .line 187
    .local v6, "set":Lcom/sun/mail/imap/protocol/UIDSet;
    iput-wide v0, v6, Lcom/sun/mail/imap/protocol/UIDSet;->start:J

    .line 190
    add-int/lit8 v2, v2, 0x1

    :goto_3
    array-length v9, p0

    if-lt v2, v9, :cond_2

    .line 208
    :goto_4
    iput-wide v0, v6, Lcom/sun/mail/imap/protocol/UIDSet;->end:J

    .line 209
    invoke-virtual {v8, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2

    .line 192
    :cond_2
    aget-object v3, p0, v2

    .end local v3    # "msg":Lcom/sun/mail/imap/IMAPMessage;
    check-cast v3, Lcom/sun/mail/imap/IMAPMessage;

    .line 194
    .restart local v3    # "msg":Lcom/sun/mail/imap/IMAPMessage;
    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 190
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 196
    :cond_3
    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->getUID()J

    move-result-wide v4

    .line 198
    .local v4, "next":J
    const-wide/16 v10, 0x1

    add-long/2addr v10, v0

    cmp-long v9, v4, v10

    if-nez v9, :cond_4

    .line 199
    move-wide v0, v4

    goto :goto_5

    .line 204
    :cond_4
    add-int/lit8 v2, v2, -0x1

    .line 205
    goto :goto_4

    .line 215
    .end local v0    # "current":J
    .end local v3    # "msg":Lcom/sun/mail/imap/IMAPMessage;
    .end local v4    # "next":J
    .end local v6    # "set":Lcom/sun/mail/imap/protocol/UIDSet;
    :cond_5
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v9

    new-array v7, v9, [Lcom/sun/mail/imap/protocol/UIDSet;

    .line 216
    .local v7, "sets":[Lcom/sun/mail/imap/protocol/UIDSet;
    invoke-virtual {v8, v7}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    goto :goto_1
.end method
