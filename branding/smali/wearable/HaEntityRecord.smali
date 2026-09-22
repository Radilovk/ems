.class final Lcom/isaigu/gymapp/wearable/HaEntityRecord;
.super Ljava/lang/Object;
.source "HaEntityRecord.java"


# instance fields
.field final entityId:Ljava/lang/String;

.field final state:Ljava/lang/String;

.field final updatedAtMs:J


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 6

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, ""

    if-eqz p1, :cond_8

    goto :goto_9

    :cond_8
    move-object p1, v0

    :goto_9
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/HaEntityRecord;->entityId:Ljava/lang/String;

    .line 11
    if-eqz p2, :cond_e

    goto :goto_f

    :cond_e
    move-object p2, v0

    :goto_f
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/HaEntityRecord;->state:Ljava/lang/String;

    .line 12
    iput-wide p3, p0, Lcom/isaigu/gymapp/wearable/HaEntityRecord;->updatedAtMs:J

    .line 13
    return-void
.end method


# virtual methods
.method shortName()Ljava/lang/String;
    .registers 3

    .line 16
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HaEntityRecord;->entityId:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 17
    if-ltz v0, :cond_1d

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/HaEntityRecord;->entityId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1d

    .line 18
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/HaEntityRecord;->entityId:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 20
    :cond_1d
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HaEntityRecord;->entityId:Ljava/lang/String;

    return-object v0
.end method
