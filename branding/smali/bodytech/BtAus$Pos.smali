.class public final Lcom/isaigu/gymapp/bodytech/BtAus$Pos;
.super Ljava/lang/Object;
.source "BtAus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/bodytech/BtAus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Pos"
.end annotation


# instance fields
.field public final factor:F

.field public final left:I

.field public final phase:I


# direct methods
.method constructor <init>(IIF)V
    .registers 4

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput p1, p0, Lcom/isaigu/gymapp/bodytech/BtAus$Pos;->phase:I

    .line 144
    iput p2, p0, Lcom/isaigu/gymapp/bodytech/BtAus$Pos;->left:I

    .line 145
    iput p3, p0, Lcom/isaigu/gymapp/bodytech/BtAus$Pos;->factor:F

    .line 146
    return-void
.end method
