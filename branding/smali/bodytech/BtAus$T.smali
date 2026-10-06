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
.field public final beatHi:I

.field public final beatLo:I

.field public final burstHz:I

.field public final burstMs:I

.field public final carrier:I

.field public final combine:Ljava/lang/String;

.field public final course:Ljava/lang/String;

.field public final feel:Ljava/lang/String;

.field public final goal:Ljava/lang/String;

.field public final how:Ljava/lang/String;

.field public final id:Ljava/lang/String;

.field public final ifc:Z

.field public final kind:I

.field public final level:I

.field public final minutes:I

.field public final name:Ljava/lang/String;

.field public final offS:I

.field public final onS:I

.field public final rampS:I

.field public final sweepS:I

.field public final us:I

.field public final wave:I

.field public final zones:[I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIIIIIII[IZIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 25

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->id:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->name:Ljava/lang/String;

    .line 48
    iput p3, p0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->kind:I

    .line 49
    iput-object p4, p0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->goal:Ljava/lang/String;

    .line 50
    iput-object p5, p0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->feel:Ljava/lang/String;

    .line 51
    iput p6, p0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->carrier:I

    .line 52
    iput p7, p0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->us:I

    .line 53
    iput p8, p0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->burstHz:I

    .line 54
    iput p9, p0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->burstMs:I

    .line 55
    const/4 v1, 0x1

    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->wave:I

    .line 56
    iput p10, p0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->onS:I

    .line 57
    iput p11, p0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->offS:I

    .line 58
    iput p12, p0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->rampS:I

    .line 59
    iput p13, p0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->minutes:I

    .line 60
    move/from16 v0, p14

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->level:I

    .line 61
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->zones:[I

    .line 62
    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->ifc:Z

    .line 63
    move/from16 v0, p17

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->beatLo:I

    .line 64
    move/from16 v0, p18

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->beatHi:I

    .line 65
    move/from16 v0, p19

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->sweepS:I

    .line 66
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->how:Ljava/lang/String;

    .line 67
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->course:Ljava/lang/String;

    .line 68
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->combine:Ljava/lang/String;

    .line 69
    return-void
.end method
