.class public final Lcom/isaigu/gymapp/widget/XemsClientMatch;
.super Ljava/lang/Object;
.source "XemsClientMatch.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static digits9(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 41
    if-nez p0, :cond_5

    .line 42
    const-string v0, ""

    .line 52
    :cond_4
    :goto_4
    return-object v0

    .line 44
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    const/4 v0, 0x0

    :goto_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_23

    .line 46
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 47
    const/16 v3, 0x30

    if-lt v2, v3, :cond_20

    const/16 v3, 0x39

    if-gt v2, v3, :cond_20

    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 51
    :cond_23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x9

    if-le v1, v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x9

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public static find(Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/bean/TrainUser;
    .registers 9

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 14
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    .line 15
    if-nez v0, :cond_c

    move-object v0, v4

    .line 37
    :cond_b
    :goto_b
    return-object v0

    .line 18
    :cond_c
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    if-nez p0, :cond_3f

    const-string v0, ""

    move-object v1, v0

    .line 20
    :goto_16
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_45

    move v2, v3

    .line 21
    :goto_1d
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_45

    .line 22
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUser;

    .line 23
    if-eqz v0, :cond_3b

    iget-object v6, v0, Lcom/isaigu/gymapp/bean/TrainUser;->email:Ljava/lang/String;

    if-eqz v6, :cond_3b

    iget-object v6, v0, Lcom/isaigu/gymapp/bean/TrainUser;->email:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 21
    :cond_3b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1d

    .line 19
    :cond_3f
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_16

    .line 28
    :cond_45
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsClientMatch;->digits9(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x7

    if-lt v0, v2, :cond_6d

    .line 30
    :goto_50
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_6d

    .line 31
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUser;

    .line 32
    if-eqz v0, :cond_6a

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->phone:Ljava/lang/String;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsClientMatch;->digits9(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 30
    :cond_6a
    add-int/lit8 v3, v3, 0x1

    goto :goto_50

    :cond_6d
    move-object v0, v4

    .line 37
    goto :goto_b
.end method
