.class public Lcom/sun/mail/imap/protocol/UIDSet;
.super Ljava/lang/Object;
.source "UIDSet.java"


# instance fields
.field public end:J

.field public start:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 1
    .param p1, "start"    # J
    .param p3, "end"    # J

    .prologue
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
    .locals 12
    .param p0, "uids"    # [J

    .prologue
    .line 79
    if-nez p0, :cond_0

    .line 80
    const/4 v5, 0x0

    .line 98
    :goto_0
    return-object v5

    .line 81
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v4, "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/imap/protocol/UIDSet;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v5, p0

    if-lt v0, v5, :cond_1

    .line 97
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v3, v5, [Lcom/sun/mail/imap/protocol/UIDSet;

    .line 98
    .local v3, "uidset":[Lcom/sun/mail/imap/protocol/UIDSet;
    invoke-interface {v4, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/sun/mail/imap/protocol/UIDSet;

    goto :goto_0

    .line 85
    .end local v3    # "uidset":[Lcom/sun/mail/imap/protocol/UIDSet;
    :cond_1
    new-instance v2, Lcom/sun/mail/imap/protocol/UIDSet;

    invoke-direct {v2}, Lcom/sun/mail/imap/protocol/UIDSet;-><init>()V

    .line 86
    .local v2, "ms":Lcom/sun/mail/imap/protocol/UIDSet;
    aget-wide v6, p0, v0

    iput-wide v6, v2, Lcom/sun/mail/imap/protocol/UIDSet;->start:J

    .line 89
    add-int/lit8 v1, v0, 0x1

    .local v1, "j":I
    :goto_2
    array-length v5, p0

    if-lt v1, v5, :cond_3

    .line 93
    :cond_2
    add-int/lit8 v5, v1, -0x1

    aget-wide v6, p0, v5

    iput-wide v6, v2, Lcom/sun/mail/imap/protocol/UIDSet;->end:J

    .line 94
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    add-int/lit8 v0, v1, -0x1

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 90
    :cond_3
    aget-wide v6, p0, v1

    add-int/lit8 v5, v1, -0x1

    aget-wide v8, p0, v5

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    cmp-long v5, v6, v8

    if-nez v5, :cond_2

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public static parseUIDSets(Ljava/lang/String;)[Lcom/sun/mail/imap/protocol/UIDSet;
    .locals 12
    .param p0, "uids"    # Ljava/lang/String;

    .prologue
    .line 109
    if-nez p0, :cond_0

    .line 110
    const/4 v10, 0x0

    .line 138
    :goto_0
    return-object v10

    .line 111
    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v9, "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/imap/protocol/UIDSet;>;"
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v10, ",:"

    const/4 v11, 0x1

    invoke-direct {v5, p0, v10, v11}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 113
    .local v5, "st":Ljava/util/StringTokenizer;
    const-wide/16 v6, -0x1

    .line 114
    .local v6, "start":J
    const/4 v0, 0x0

    .local v0, "cur":Lcom/sun/mail/imap/protocol/UIDSet;
    move-object v1, v0

    .line 116
    .end local v0    # "cur":Lcom/sun/mail/imap/protocol/UIDSet;
    .local v1, "cur":Lcom/sun/mail/imap/protocol/UIDSet;
    :cond_1
    :goto_1
    :try_start_0
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-nez v10, :cond_3

    .line 135
    :goto_2
    if-eqz v1, :cond_2

    .line 136
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    new-array v8, v10, [Lcom/sun/mail/imap/protocol/UIDSet;

    .line 138
    .local v8, "uidset":[Lcom/sun/mail/imap/protocol/UIDSet;
    invoke-interface {v9, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lcom/sun/mail/imap/protocol/UIDSet;

    goto :goto_0

    .line 117
    .end local v8    # "uidset":[Lcom/sun/mail/imap/protocol/UIDSet;
    :cond_3
    :try_start_1
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 118
    .local v4, "s":Ljava/lang/String;
    const-string v10, ","

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 119
    if-eqz v1, :cond_4

    .line 120
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_4
    const/4 v0, 0x0

    .end local v1    # "cur":Lcom/sun/mail/imap/protocol/UIDSet;
    .restart local v0    # "cur":Lcom/sun/mail/imap/protocol/UIDSet;
    move-object v1, v0

    .line 122
    .end local v0    # "cur":Lcom/sun/mail/imap/protocol/UIDSet;
    .restart local v1    # "cur":Lcom/sun/mail/imap/protocol/UIDSet;
    goto :goto_1

    :cond_5
    const-string v10, ":"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 125
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 126
    .local v2, "n":J
    if-eqz v1, :cond_6

    .line 127
    iput-wide v2, v1, Lcom/sun/mail/imap/protocol/UIDSet;->end:J

    goto :goto_1

    .line 132
    .end local v2    # "n":J
    .end local v4    # "s":Ljava/lang/String;
    :catch_0
    move-exception v10

    goto :goto_2

    .line 129
    .restart local v2    # "n":J
    .restart local v4    # "s":Ljava/lang/String;
    :cond_6
    new-instance v0, Lcom/sun/mail/imap/protocol/UIDSet;

    invoke-direct {v0, v2, v3, v2, v3}, Lcom/sun/mail/imap/protocol/UIDSet;-><init>(JJ)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v1    # "cur":Lcom/sun/mail/imap/protocol/UIDSet;
    .restart local v0    # "cur":Lcom/sun/mail/imap/protocol/UIDSet;
    move-object v1, v0

    .end local v0    # "cur":Lcom/sun/mail/imap/protocol/UIDSet;
    .restart local v1    # "cur":Lcom/sun/mail/imap/protocol/UIDSet;
    goto :goto_1
.end method

.method public static size([Lcom/sun/mail/imap/protocol/UIDSet;)J
    .locals 8
    .param p0, "uidset"    # [Lcom/sun/mail/imap/protocol/UIDSet;

    .prologue
    .line 227
    const-wide/16 v0, 0x0

    .line 229
    .local v0, "count":J
    if-eqz p0, :cond_0

    .line 230
    array-length v4, p0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_1

    .line 233
    :cond_0
    return-wide v0

    .line 230
    :cond_1
    aget-object v2, p0, v3

    .line 231
    .local v2, "u":Lcom/sun/mail/imap/protocol/UIDSet;
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/UIDSet;->size()J

    move-result-wide v6

    add-long/2addr v0, v6

    .line 230
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static size([Lcom/sun/mail/imap/protocol/UIDSet;J)J
    .locals 13
    .param p0, "uidset"    # [Lcom/sun/mail/imap/protocol/UIDSet;
    .param p1, "uidmax"    # J

    .prologue
    const-wide/16 v10, 0x1

    .line 243
    const-wide/16 v0, 0x0

    .line 245
    .local v0, "count":J
    if-eqz p0, :cond_0

    .line 246
    array-length v4, p0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_1

    .line 257
    :cond_0
    return-wide v0

    .line 246
    :cond_1
    aget-object v2, p0, v3

    .line 247
    .local v2, "u":Lcom/sun/mail/imap/protocol/UIDSet;
    const-wide/16 v6, 0x0

    cmp-long v5, p1, v6

    if-gez v5, :cond_3

    .line 248
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/UIDSet;->size()J

    move-result-wide v6

    add-long/2addr v0, v6

    .line 246
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 249
    :cond_3
    iget-wide v6, v2, Lcom/sun/mail/imap/protocol/UIDSet;->start:J

    cmp-long v5, v6, p1

    if-gtz v5, :cond_2

    .line 250
    iget-wide v6, v2, Lcom/sun/mail/imap/protocol/UIDSet;->end:J

    cmp-long v5, v6, p1

    if-gez v5, :cond_4

    .line 251
    iget-wide v6, v2, Lcom/sun/mail/imap/protocol/UIDSet;->end:J

    iget-wide v8, v2, Lcom/sun/mail/imap/protocol/UIDSet;->start:J

    sub-long/2addr v6, v8

    add-long/2addr v6, v10

    add-long/2addr v0, v6

    goto :goto_1

    .line 253
    :cond_4
    iget-wide v6, v2, Lcom/sun/mail/imap/protocol/UIDSet;->start:J

    sub-long v6, p1, v6

    add-long/2addr v6, v10

    add-long/2addr v0, v6

    goto :goto_1
.end method

.method public static toArray([Lcom/sun/mail/imap/protocol/UIDSet;)[J
    .locals 10
    .param p0, "uidset"    # [Lcom/sun/mail/imap/protocol/UIDSet;

    .prologue
    .line 185
    if-nez p0, :cond_1

    .line 186
    const/4 v5, 0x0

    .line 193
    :cond_0
    return-object v5

    .line 187
    :cond_1
    invoke-static {p0}, Lcom/sun/mail/imap/protocol/UIDSet;->size([Lcom/sun/mail/imap/protocol/UIDSet;)J

    move-result-wide v6

    long-to-int v6, v6

    new-array v5, v6, [J

    .line 188
    .local v5, "uids":[J
    const/4 v0, 0x0

    .line 189
    .local v0, "i":I
    array-length v7, p0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v4, p0, v6

    .line 190
    .local v4, "u":Lcom/sun/mail/imap/protocol/UIDSet;
    iget-wide v2, v4, Lcom/sun/mail/imap/protocol/UIDSet;->start:J

    .local v2, "n":J
    :goto_1
    iget-wide v8, v4, Lcom/sun/mail/imap/protocol/UIDSet;->end:J

    cmp-long v8, v2, v8

    if-lez v8, :cond_2

    .line 189
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 191
    :cond_2
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aput-wide v2, v5, v0

    .line 190
    const-wide/16 v8, 0x1

    add-long/2addr v2, v8

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_1
.end method

.method public static toArray([Lcom/sun/mail/imap/protocol/UIDSet;J)[J
    .locals 11
    .param p0, "uidset"    # [Lcom/sun/mail/imap/protocol/UIDSet;
    .param p1, "uidmax"    # J

    .prologue
    .line 206
    if-nez p0, :cond_1

    .line 207
    const/4 v5, 0x0

    .line 217
    :cond_0
    return-object v5

    .line 208
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/sun/mail/imap/protocol/UIDSet;->size([Lcom/sun/mail/imap/protocol/UIDSet;J)J

    move-result-wide v6

    long-to-int v6, v6

    new-array v5, v6, [J

    .line 209
    .local v5, "uids":[J
    const/4 v0, 0x0

    .line 210
    .local v0, "i":I
    array-length v7, p0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v4, p0, v6

    .line 211
    .local v4, "u":Lcom/sun/mail/imap/protocol/UIDSet;
    iget-wide v2, v4, Lcom/sun/mail/imap/protocol/UIDSet;->start:J

    .local v2, "n":J
    :goto_1
    iget-wide v8, v4, Lcom/sun/mail/imap/protocol/UIDSet;->end:J

    cmp-long v8, v2, v8

    if-lez v8, :cond_3

    .line 210
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 212
    :cond_3
    const-wide/16 v8, 0x0

    cmp-long v8, p1, v8

    if-ltz v8, :cond_4

    cmp-long v8, v2, p1

    if-gtz v8, :cond_2

    .line 214
    :cond_4
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aput-wide v2, v5, v0

    .line 211
    const-wide/16 v8, 0x1

    add-long/2addr v2, v8

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_1
.end method

.method public static toString([Lcom/sun/mail/imap/protocol/UIDSet;)Ljava/lang/String;
    .locals 9
    .param p0, "uidset"    # [Lcom/sun/mail/imap/protocol/UIDSet;

    .prologue
    .line 148
    if-nez p0, :cond_0

    .line 149
    const/4 v5, 0x0

    .line 173
    :goto_0
    return-object v5

    .line 150
    :cond_0
    array-length v5, p0

    if-nez v5, :cond_1

    .line 151
    const-string v5, ""

    goto :goto_0

    .line 153
    :cond_1
    const/4 v2, 0x0

    .line 154
    .local v2, "i":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .local v3, "s":Ljava/lang/StringBuilder;
    array-length v4, p0

    .line 159
    .local v4, "size":I
    :goto_1
    aget-object v5, p0, v2

    iget-wide v6, v5, Lcom/sun/mail/imap/protocol/UIDSet;->start:J

    .line 160
    .local v6, "start":J
    aget-object v5, p0, v2

    iget-wide v0, v5, Lcom/sun/mail/imap/protocol/UIDSet;->end:J

    .line 162
    .local v0, "end":J
    cmp-long v5, v0, v6

    if-lez v5, :cond_2

    .line 163
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v8, 0x3a

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 167
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 168
    if-lt v2, v4, :cond_3

    .line 173
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 165
    :cond_2
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 171
    :cond_3
    const/16 v5, 0x2c

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method


# virtual methods
.method public size()J
    .locals 4

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/sun/mail/imap/protocol/UIDSet;->end:J

    iget-wide v2, p0, Lcom/sun/mail/imap/protocol/UIDSet;->start:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    return-wide v0
.end method
