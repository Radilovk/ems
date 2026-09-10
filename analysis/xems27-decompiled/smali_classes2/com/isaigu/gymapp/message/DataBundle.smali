.class public Lcom/isaigu/gymapp/message/DataBundle;
.super Ljava/lang/Object;
.source "DataBundle.java"


# instance fields
.field private map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/message/DataBundle;->map:Ljava/util/HashMap;

    .line 12
    return-void
.end method

.method public constructor <init>(SLjava/lang/Object;)V
    .locals 3
    .param p1, "event"    # S
    .param p2, "content"    # Ljava/lang/Object;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/message/DataBundle;->map:Ljava/util/HashMap;

    .line 22
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const-string v2, "event"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v0, p0, Lcom/isaigu/gymapp/message/DataBundle;->map:Ljava/util/HashMap;

    const-string v1, "content"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    return-void
.end method

.method public constructor <init>(SLjava/lang/String;)V
    .locals 3
    .param p1, "event"    # S
    .param p2, "content"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/message/DataBundle;->map:Ljava/util/HashMap;

    .line 16
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const-string v2, "event"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v0, p0, Lcom/isaigu/gymapp/message/DataBundle;->map:Ljava/util/HashMap;

    const-string v1, "content"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/isaigu/gymapp/message/DataBundle;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 181
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/isaigu/gymapp/message/DataBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultVal"    # Z

    .line 173
    iget-object v0, p0, Lcom/isaigu/gymapp/message/DataBundle;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 174
    .local v0, "b":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 175
    return p2

    .line 177
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public getChar(Ljava/lang/String;)C
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 117
    const/16 v0, 0x30

    invoke-virtual {p0, p1, v0}, Lcom/isaigu/gymapp/message/DataBundle;->getChar(Ljava/lang/String;C)C

    move-result v0

    return v0
.end method

.method public getChar(Ljava/lang/String;C)C
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultVal"    # C

    .line 109
    iget-object v0, p0, Lcom/isaigu/gymapp/message/DataBundle;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    .line 110
    .local v0, "character":Ljava/lang/Character;
    if-nez v0, :cond_0

    .line 111
    return p2

    .line 113
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v1

    return v1
.end method

.method public getContent()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/isaigu/gymapp/message/DataBundle;->map:Ljava/util/HashMap;

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 149
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/isaigu/gymapp/message/DataBundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(Ljava/lang/String;D)D
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultVal"    # D

    .line 141
    iget-object v0, p0, Lcom/isaigu/gymapp/message/DataBundle;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 142
    .local v0, "d":Ljava/lang/Double;
    if-nez v0, :cond_0

    .line 143
    return-wide p2

    .line 145
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    return-wide v1
.end method

.method public getEvent()S
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/isaigu/gymapp/message/DataBundle;->map:Ljava/util/HashMap;

    const-string v1, "event"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    return v0
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/isaigu/gymapp/message/DataBundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultVal"    # F

    .line 93
    iget-object v0, p0, Lcom/isaigu/gymapp/message/DataBundle;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 94
    .local v0, "f":Ljava/lang/Float;
    if-nez v0, :cond_0

    .line 95
    return p2

    .line 97
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 85
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/isaigu/gymapp/message/DataBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultVal"    # I

    .line 77
    iget-object v0, p0, Lcom/isaigu/gymapp/message/DataBundle;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 78
    .local v0, "integer":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 79
    return p2

    .line 81
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 133
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/isaigu/gymapp/message/DataBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultVal"    # J

    .line 125
    iget-object v0, p0, Lcom/isaigu/gymapp/message/DataBundle;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 126
    .local v0, "l":Ljava/lang/Long;
    if-nez v0, :cond_0

    .line 127
    return-wide p2

    .line 129
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1
.end method

.method public getShort(Ljava/lang/String;)S
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 165
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/isaigu/gymapp/message/DataBundle;->getShort(Ljava/lang/String;S)S

    move-result v0

    return v0
.end method

.method public getShort(Ljava/lang/String;S)S
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultVal"    # S

    .line 157
    iget-object v0, p0, Lcom/isaigu/gymapp/message/DataBundle;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    .line 158
    .local v0, "s":Ljava/lang/Short;
    if-nez v0, :cond_0

    .line 159
    return p2

    .line 161
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v1

    return v1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/isaigu/gymapp/message/DataBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/isaigu/gymapp/message/DataBundle;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 66
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 67
    return-object p2

    .line 69
    :cond_0
    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 48
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/isaigu/gymapp/message/DataBundle;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-void
.end method

.method public setBoolean(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 169
    iget-object v0, p0, Lcom/isaigu/gymapp/message/DataBundle;->map:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    return-void
.end method

.method public setChar(Ljava/lang/String;C)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # C

    .line 105
    iget-object v0, p0, Lcom/isaigu/gymapp/message/DataBundle;->map:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-void
.end method

.method public setContent(Ljava/lang/Object;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lcom/isaigu/gymapp/message/DataBundle;->map:Ljava/util/HashMap;

    const-string v1, "content"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-void
.end method

.method public setDouble(Ljava/lang/String;D)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    .line 137
    iget-object v0, p0, Lcom/isaigu/gymapp/message/DataBundle;->map:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    return-void
.end method

.method public setEvent(S)V
    .locals 3
    .param p1, "event"    # S

    .line 28
    iget-object v0, p0, Lcom/isaigu/gymapp/message/DataBundle;->map:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const-string v2, "event"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    return-void
.end method

.method public setFloat(Ljava/lang/String;F)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 89
    iget-object v0, p0, Lcom/isaigu/gymapp/message/DataBundle;->map:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    return-void
.end method

.method public setInt(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 73
    iget-object v0, p0, Lcom/isaigu/gymapp/message/DataBundle;->map:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    return-void
.end method

.method public setLong(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 121
    iget-object v0, p0, Lcom/isaigu/gymapp/message/DataBundle;->map:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    return-void
.end method

.method public setShort(Ljava/lang/String;S)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # S

    .line 153
    iget-object v0, p0, Lcom/isaigu/gymapp/message/DataBundle;->map:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/isaigu/gymapp/message/DataBundle;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method
