.class public Lcom/sun/mail/imap/protocol/UIDSet;
.super Ljava/lang/Object;
.source "UIDSet.java"


# instance fields
.field public end:J

.field public start:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0
    .param p1, "start"    # J
    .param p3, "end"    # J

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-wide p1, p0, Lcom/sun/mail/imap/protocol/UIDSet;->start:J

    .line 60
    iput-wide p3, p0, Lcom/sun/mail/imap/protocol/UIDSet;->end:J

    .line 61
    return-void
.end method

.method public static createUIDSets([J)[Lcom/sun/mail/imap/protocol/UIDSet;
    .locals 10
    .param p0, "uids"    # [J

    .line 79
    if-nez p0, :cond_0

    .line 80
    const/4 v0, 0x0

    return-object v0

    .line 81
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v0, "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/imap/protocol/UIDSet;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_1

    .line 97
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/sun/mail/imap/protocol/UIDSet;

    .line 98
    .local v2, "uidset":[Lcom/sun/mail/imap/protocol/UIDSet;
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/sun/mail/imap/protocol/UIDSet;

    return-object v3

    .line 85
    .end local v2    # "uidset":[Lcom/sun/mail/imap/protocol/UIDSet;
    :cond_1
    new-instance v2, Lcom/sun/mail/imap/protocol/UIDSet;

    invoke-direct {v2}, Lcom/sun/mail/imap/protocol/UIDSet;-><init>()V

    .line 86
    .local v2, "ms":Lcom/sun/mail/imap/protocol/UIDSet;
    aget-wide v3, p0, v1

    iput-wide v3, v2, Lcom/sun/mail/imap/protocol/UIDSet;->start:J

    .line 89
    add-int/lit8 v3, v1, 0x1

    .local v3, "j":I
    :goto_1
    array-length v4, p0

    if-lt v3, v4, :cond_2

    goto :goto_2

    .line 90
    :cond_2
    aget-wide v4, p0, v3

    add-int/lit8 v6, v3, -0x1

    aget-wide v6, p0, v6

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    cmp-long v8, v4, v6

    if-eqz v8, :cond_3

    .line 91
    nop

    .line 93
    :goto_2
    add-int/lit8 v4, v3, -0x1

    aget-wide v4, p0, v4

    iput-wide v4, v2, Lcom/sun/mail/imap/protocol/UIDSet;->end:J

    .line 94
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    add-int/lit8 v1, v3, -0x1

    .line 84
    .end local v2    # "ms":Lcom/sun/mail/imap/protocol/UIDSet;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    .restart local v2    # "ms":Lcom/sun/mail/imap/protocol/UIDSet;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static parseUIDSets(Ljava/lang/String;)[Lcom/sun/mail/imap/protocol/UIDSet;
    .locals 9
    .param p0, "uids"    # Ljava/lang/String;

    .line 109
    if-nez p0, :cond_0

    .line 110
    const/4 v0, 0x0

    return-object v0

    .line 111
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v0, "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/imap/protocol/UIDSet;>;"
    new-instance v1, Ljava/util/StringTokenizer;

    const/4 v2, 0x1

    const-string v3, ",:"

    invoke-direct {v1, p0, v3, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 113
    .local v1, "st":Ljava/util/StringTokenizer;
    const-wide/16 v2, -0x1

    .line 114
    .local v2, "start":J
    const/4 v4, 0x0

    .line 116
    .local v4, "cur":Lcom/sun/mail/imap/protocol/UIDSet;
    nop

    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-nez v5, :cond_1

    .line 132
    goto :goto_1

    .line 117
    :cond_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 118
    .local v5, "s":Ljava/lang/String;
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 119
    if-eqz v4, :cond_2

    .line 120
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_2
    const/4 v4, 0x0

    .line 122
    :cond_3
    goto :goto_0

    :cond_4
    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 125
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 126
    .local v6, "n":J
    if-eqz v4, :cond_5

    .line 127
    iput-wide v6, v4, Lcom/sun/mail/imap/protocol/UIDSet;->end:J

    goto :goto_0

    .line 129
    :cond_5
    new-instance v8, Lcom/sun/mail/imap/protocol/UIDSet;

    invoke-direct {v8, v6, v7, v6, v7}, Lcom/sun/mail/imap/protocol/UIDSet;-><init>(JJ)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v8

    goto :goto_0

    .line 132
    .end local v5    # "s":Ljava/lang/String;
    .end local v6    # "n":J
    :catch_0
    move-exception v5

    .line 135
    :goto_1
    if-eqz v4, :cond_6

    .line 136
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lcom/sun/mail/imap/protocol/UIDSet;

    .line 138
    .local v5, "uidset":[Lcom/sun/mail/imap/protocol/UIDSet;
    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/sun/mail/imap/protocol/UIDSet;

    return-object v6
.end method

.method public static size([Lcom/sun/mail/imap/protocol/UIDSet;)J
    .locals 7
    .param p0, "uidset"    # [Lcom/sun/mail/imap/protocol/UIDSet;

    .line 227
    const-wide/16 v0, 0x0

    .line 229
    .local v0, "count":J
    if-eqz p0, :cond_1

    .line 230
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    goto :goto_1

    :cond_0
    aget-object v4, p0, v3

    .line 231
    .local v4, "u":Lcom/sun/mail/imap/protocol/UIDSet;
    invoke-virtual {v4}, Lcom/sun/mail/imap/protocol/UIDSet;->size()J

    move-result-wide v5

    add-long/2addr v0, v5

    .line 230
    .end local v4    # "u":Lcom/sun/mail/imap/protocol/UIDSet;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 233
    :cond_1
    :goto_1
    return-wide v0
.end method

.method private static size([Lcom/sun/mail/imap/protocol/UIDSet;J)J
    .locals 12
    .param p0, "uidset"    # [Lcom/sun/mail/imap/protocol/UIDSet;
    .param p1, "uidmax"    # J

    .line 243
    const-wide/16 v0, 0x0

    .line 245
    .local v0, "count":J
    if-eqz p0, :cond_4

    .line 246
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    goto :goto_2

    :cond_0
    aget-object v4, p0, v3

    .line 247
    .local v4, "u":Lcom/sun/mail/imap/protocol/UIDSet;
    const-wide/16 v5, 0x0

    cmp-long v7, p1, v5

    if-gez v7, :cond_1

    .line 248
    invoke-virtual {v4}, Lcom/sun/mail/imap/protocol/UIDSet;->size()J

    move-result-wide v5

    add-long/2addr v0, v5

    goto :goto_1

    .line 249
    :cond_1
    iget-wide v5, v4, Lcom/sun/mail/imap/protocol/UIDSet;->start:J

    cmp-long v7, v5, p1

    if-gtz v7, :cond_3

    .line 250
    iget-wide v7, v4, Lcom/sun/mail/imap/protocol/UIDSet;->end:J

    const-wide/16 v9, 0x1

    cmp-long v11, v7, p1

    if-gez v11, :cond_2

    .line 251
    sub-long/2addr v7, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    goto :goto_1

    .line 253
    :cond_2
    sub-long v5, p1, v5

    add-long/2addr v5, v9

    add-long/2addr v0, v5

    .line 246
    .end local v4    # "u":Lcom/sun/mail/imap/protocol/UIDSet;
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 257
    :cond_4
    :goto_2
    return-wide v0
.end method

.method public static toArray([Lcom/sun/mail/imap/protocol/UIDSet;)[J
    .locals 10
    .param p0, "uidset"    # [Lcom/sun/mail/imap/protocol/UIDSet;

    .line 185
    if-nez p0, :cond_0

    .line 186
    const/4 v0, 0x0

    return-object v0

    .line 187
    :cond_0
    invoke-static {p0}, Lcom/sun/mail/imap/protocol/UIDSet;->size([Lcom/sun/mail/imap/protocol/UIDSet;)J

    move-result-wide v0

    long-to-int v1, v0

    new-array v0, v1, [J

    .line 188
    .local v0, "uids":[J
    const/4 v1, 0x0

    .line 189
    .local v1, "i":I
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_1

    .line 193
    return-object v0

    .line 189
    :cond_1
    aget-object v4, p0, v3

    .line 190
    .local v4, "u":Lcom/sun/mail/imap/protocol/UIDSet;
    iget-wide v5, v4, Lcom/sun/mail/imap/protocol/UIDSet;->start:J

    .local v5, "n":J
    :goto_1
    iget-wide v7, v4, Lcom/sun/mail/imap/protocol/UIDSet;->end:J

    cmp-long v9, v5, v7

    if-lez v9, :cond_2

    .line 189
    .end local v4    # "u":Lcom/sun/mail/imap/protocol/UIDSet;
    .end local v5    # "n":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 191
    .restart local v4    # "u":Lcom/sun/mail/imap/protocol/UIDSet;
    .restart local v5    # "n":J
    :cond_2
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "i":I
    .local v7, "i":I
    aput-wide v5, v0, v1

    .line 190
    const-wide/16 v8, 0x1

    add-long/2addr v5, v8

    move v1, v7

    goto :goto_1
.end method

.method public static toArray([Lcom/sun/mail/imap/protocol/UIDSet;J)[J
    .locals 10
    .param p0, "uidset"    # [Lcom/sun/mail/imap/protocol/UIDSet;
    .param p1, "uidmax"    # J

    .line 206
    if-nez p0, :cond_0

    .line 207
    const/4 v0, 0x0

    return-object v0

    .line 208
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/sun/mail/imap/protocol/UIDSet;->size([Lcom/sun/mail/imap/protocol/UIDSet;J)J

    move-result-wide v0

    long-to-int v1, v0

    new-array v0, v1, [J

    .line 209
    .local v0, "uids":[J
    const/4 v1, 0x0

    .line 210
    .local v1, "i":I
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_1

    .line 217
    return-object v0

    .line 210
    :cond_1
    aget-object v4, p0, v3

    .line 211
    .local v4, "u":Lcom/sun/mail/imap/protocol/UIDSet;
    iget-wide v5, v4, Lcom/sun/mail/imap/protocol/UIDSet;->start:J

    .local v5, "n":J
    :goto_1
    iget-wide v7, v4, Lcom/sun/mail/imap/protocol/UIDSet;->end:J

    cmp-long v9, v5, v7

    if-lez v9, :cond_2

    goto :goto_2

    .line 212
    :cond_2
    const-wide/16 v7, 0x0

    cmp-long v9, p1, v7

    if-ltz v9, :cond_3

    cmp-long v7, v5, p1

    if-lez v7, :cond_3

    .line 213
    nop

    .line 210
    .end local v4    # "u":Lcom/sun/mail/imap/protocol/UIDSet;
    .end local v5    # "n":J
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 214
    .restart local v4    # "u":Lcom/sun/mail/imap/protocol/UIDSet;
    .restart local v5    # "n":J
    :cond_3
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "i":I
    .local v7, "i":I
    aput-wide v5, v0, v1

    .line 211
    const-wide/16 v8, 0x1

    add-long/2addr v5, v8

    move v1, v7

    goto :goto_1
.end method

.method public static toString([Lcom/sun/mail/imap/protocol/UIDSet;)Ljava/lang/String;
    .locals 8
    .param p0, "uidset"    # [Lcom/sun/mail/imap/protocol/UIDSet;

    .line 148
    if-nez p0, :cond_0

    .line 149
    const/4 v0, 0x0

    return-object v0

    .line 150
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 151
    const-string v0, ""

    return-object v0

    .line 153
    :cond_1
    const/4 v0, 0x0

    .line 154
    .local v0, "i":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .local v1, "s":Ljava/lang/StringBuilder;
    array-length v2, p0

    .line 159
    .local v2, "size":I
    :goto_0
    aget-object v3, p0, v0

    iget-wide v3, v3, Lcom/sun/mail/imap/protocol/UIDSet;->start:J

    .line 160
    .local v3, "start":J
    aget-object v5, p0, v0

    iget-wide v5, v5, Lcom/sun/mail/imap/protocol/UIDSet;->end:J

    .line 162
    .local v5, "end":J
    cmp-long v7, v5, v3

    if-lez v7, :cond_2

    .line 163
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v7, 0x3a

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 165
    :cond_2
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 167
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 168
    if-lt v0, v2, :cond_3

    .line 169
    nop

    .line 173
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 171
    :cond_3
    const/16 v7, 0x2c

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 158
    .end local v3    # "start":J
    .end local v5    # "end":J
    goto :goto_0
.end method


# virtual methods
.method public size()J
    .locals 4

    .line 69
    iget-wide v0, p0, Lcom/sun/mail/imap/protocol/UIDSet;->end:J

    iget-wide v2, p0, Lcom/sun/mail/imap/protocol/UIDSet;->start:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    return-wide v0
.end method
