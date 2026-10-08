.class final Lcom/isaigu/gymapp/wearable/ClientSort$Order;
.super Ljava/lang/Object;
.source "ClientSort.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/ClientSort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Order"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/isaigu/gymapp/bean/TrainUser;",
        ">;"
    }
.end annotation


# instance fields
.field private final col:Ljava/text/Collator;

.field private final sort:I

.field private final st:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "[J>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILjava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "[J>;)V"
        }
    .end annotation

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput p1, p0, Lcom/isaigu/gymapp/wearable/ClientSort$Order;->sort:I

    .line 202
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/ClientSort$Order;->st:Ljava/util/Map;

    .line 203
    new-instance v0, Ljava/util/Locale;

    const-string v1, "bg"

    const-string v2, "BG"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    .line 204
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 205
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/ClientSort$Order;->col:Ljava/text/Collator;

    .line 206
    return-void
.end method


# virtual methods
.method public compare(Lcom/isaigu/gymapp/bean/TrainUser;Lcom/isaigu/gymapp/bean/TrainUser;)I
    .registers 13

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 210
    .line 211
    iget v0, p0, Lcom/isaigu/gymapp/wearable/ClientSort$Order;->sort:I

    if-eq v0, v4, :cond_e

    iget v0, p0, Lcom/isaigu/gymapp/wearable/ClientSort$Order;->sort:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5b

    .line 212
    :cond_e
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ClientSort$Order;->st:Ljava/util/Map;

    iget-wide v8, p1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 213
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/ClientSort$Order;->st:Ljava/util/Map;

    iget-wide v8, p2, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    .line 214
    iget v5, p0, Lcom/isaigu/gymapp/wearable/ClientSort$Order;->sort:I

    if-ne v5, v4, :cond_4d

    move v5, v2

    .line 215
    :goto_2f
    if-eqz v0, :cond_4f

    aget-wide v8, v0, v5

    .line 216
    :goto_33
    if-eqz v1, :cond_51

    aget-wide v0, v1, v5

    .line 217
    :goto_37
    cmp-long v5, v8, v0

    if-nez v5, :cond_53

    move v0, v2

    .line 223
    :goto_3c
    if-nez v0, :cond_4c

    .line 224
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ClientSort$Order;->col:Ljava/text/Collator;

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/ClientSort;->name(Lcom/isaigu/gymapp/bean/TrainUser;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/isaigu/gymapp/wearable/ClientSort;->name(Lcom/isaigu/gymapp/bean/TrainUser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 226
    :cond_4c
    return v0

    :cond_4d
    move v5, v4

    .line 214
    goto :goto_2f

    :cond_4f
    move-wide v8, v6

    .line 215
    goto :goto_33

    :cond_51
    move-wide v0, v6

    .line 216
    goto :goto_37

    .line 217
    :cond_53
    cmp-long v0, v8, v0

    if-lez v0, :cond_59

    move v0, v3

    goto :goto_3c

    :cond_59
    move v0, v4

    goto :goto_3c

    .line 218
    :cond_5b
    iget v0, p0, Lcom/isaigu/gymapp/wearable/ClientSort$Order;->sort:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_88

    .line 219
    iget-object v0, p1, Lcom/isaigu/gymapp/bean/TrainUser;->createTime:Ljava/util/Date;

    if-eqz v0, :cond_7a

    iget-object v0, p1, Lcom/isaigu/gymapp/bean/TrainUser;->createTime:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 220
    :goto_6a
    iget-object v5, p2, Lcom/isaigu/gymapp/bean/TrainUser;->createTime:Ljava/util/Date;

    if-eqz v5, :cond_7d

    iget-object v5, p2, Lcom/isaigu/gymapp/bean/TrainUser;->createTime:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 221
    :goto_74
    cmp-long v5, v0, v6

    if-nez v5, :cond_80

    :goto_78
    move v0, v2

    goto :goto_3c

    .line 219
    :cond_7a
    iget-wide v0, p1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    goto :goto_6a

    .line 220
    :cond_7d
    iget-wide v6, p2, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    goto :goto_74

    .line 221
    :cond_80
    cmp-long v0, v0, v6

    if-lez v0, :cond_86

    move v2, v3

    goto :goto_78

    :cond_86
    move v2, v4

    goto :goto_78

    :cond_88
    move v0, v2

    goto :goto_3c
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 195
    check-cast p1, Lcom/isaigu/gymapp/bean/TrainUser;

    check-cast p2, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/ClientSort$Order;->compare(Lcom/isaigu/gymapp/bean/TrainUser;Lcom/isaigu/gymapp/bean/TrainUser;)I

    move-result v0

    return v0
.end method
