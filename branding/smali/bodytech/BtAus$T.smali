.class public final Lcom/isaigu/gymapp/bodytech/BtAus$T;
.super Ljava/lang/Object;
.source "BtAus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/bodytech/BtAus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "T"
.end annotation


# instance fields
.field public final advanced:Z

.field public final combine:Ljava/lang/String;

.field public final course:Ljava/lang/String;

.field public final feel:Ljava/lang/String;

.field public final goal:Ljava/lang/String;

.field public final how:Ljava/lang/String;

.field public final id:Ljava/lang/String;

.field public final ifc:Z

.field public final kind:I

.field public final minutes:I

.field public final name:Ljava/lang/String;

.field public final ph:[Lcom/isaigu/gymapp/bodytech/BtAus$Ph;

.field public final zones:[I


# direct methods
.method varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/isaigu/gymapp/bodytech/BtAus$Ph;)V
    .registers 18

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->id:Ljava/lang/String;

    .line 87
    iput-object p2, p0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->name:Ljava/lang/String;

    .line 88
    const/4 v1, 0x1

    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->kind:I

    .line 89
    iput-object p3, p0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->goal:Ljava/lang/String;

    .line 90
    iput-object p4, p0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->feel:Ljava/lang/String;

    .line 91
    iput-object p5, p0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->zones:[I

    .line 92
    iput-boolean p6, p0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->advanced:Z

    .line 93
    iput-object p7, p0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->how:Ljava/lang/String;

    .line 94
    iput-object p8, p0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->course:Ljava/lang/String;

    .line 95
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->combine:Ljava/lang/String;

    .line 96
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->ph:[Lcom/isaigu/gymapp/bodytech/BtAus$Ph;

    .line 97
    const/4 v3, 0x0

    .line 98
    const/4 v2, 0x0

    .line 99
    move-object/from16 v0, p10

    array-length v4, v0

    const/4 v1, 0x0

    :goto_24
    if-ge v1, v4, :cond_31

    aget-object v5, p10, v1

    .line 100
    iget v6, v5, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->minutes:I

    add-int/2addr v3, v6

    .line 101
    iget-boolean v5, v5, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->ifc:Z

    or-int/2addr v2, v5

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 103
    :cond_31
    iput v3, p0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->minutes:I

    .line 104
    iput-boolean v2, p0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->ifc:Z

    .line 105
    return-void
.end method
