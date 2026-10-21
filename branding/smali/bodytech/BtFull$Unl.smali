.class final Lcom/isaigu/gymapp/bodytech/BtFull$Unl;
.super Ljava/lang/Object;
.source "BtFull.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/XemsUi$OnToggle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/bodytech/BtFull;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Unl"
.end annotation


# instance fields
.field final f:Lcom/isaigu/gymapp/bodytech/BtFull;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/bodytech/BtFull;)V
    .registers 2

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtFull$Unl;->f:Lcom/isaigu/gymapp/bodytech/BtFull;

    .line 247
    return-void
.end method


# virtual methods
.method public onToggle(Z)V
    .registers 2

    .prologue
    .line 251
    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->setUnlimited(Z)V

    .line 252
    return-void
.end method
