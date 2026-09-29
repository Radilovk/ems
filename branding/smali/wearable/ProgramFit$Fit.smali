.class final Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;
.super Ljava/lang/Object;
.source "ProgramFit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/ProgramFit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Fit"
.end annotation


# instance fields
.field final base:[[I

.field final fit:[[I

.field hasBase:Z

.field final last:[[I

.field final manual:[[Z

.field program:Ljava/lang/String;

.field ref:Lcom/isaigu/gymapp/bean/TrainProgram;

.field userId:J

.field final zoneBase:[[I

.field final zoneFit:[[I


# direct methods
.method constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x7

    const/4 v2, 0x4

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    filled-new-array {v2, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->base:[[I

    .line 72
    filled-new-array {v2, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->fit:[[I

    .line 73
    filled-new-array {v2, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->last:[[I

    .line 74
    const/16 v0, 0x8

    filled-new-array {v2, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->manual:[[Z

    .line 75
    new-array v0, v2, [[I

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->zoneBase:[[I

    .line 76
    new-array v0, v2, [[I

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->zoneFit:[[I

    return-void
.end method
