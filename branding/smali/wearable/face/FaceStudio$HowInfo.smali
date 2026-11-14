.class final Lcom/isaigu/gymapp/wearable/face/FaceStudio$HowInfo;
.super Ljava/lang/Object;
.source "FaceStudio.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/face/FaceStudio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "HowInfo"
.end annotation


# instance fields
.field private final id:I

.field private final v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;I)V
    .registers 3

    .prologue
    .line 1251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1252
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$HowInfo;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    .line 1253
    iput p2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$HowInfo;->id:I

    .line 1254
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 1258
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$HowInfo;->id:I

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->get(I)Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    move-result-object v0

    .line 1259
    invoke-static {}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->bg()Z

    move-result v1

    .line 1260
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$HowInfo;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->name(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->how(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->sheet(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    return-void
.end method
