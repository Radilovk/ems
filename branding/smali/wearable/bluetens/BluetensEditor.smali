.class public final Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor;
.super Ljava/lang/Object;
.source "BluetensEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Listener;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Closed;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Done;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Disarm;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Delete;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$RemoveStep;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$AddStep;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Change;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static open(Landroid/app/Activity;Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Listener;)V
    .registers 5

    .prologue
    .line 40
    :try_start_0
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;

    invoke-direct {v0, p0, p1, p2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;-><init>(Landroid/app/Activity;Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Listener;)V

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->show()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_8} :catch_9

    .line 44
    :goto_8
    return-void

    .line 41
    :catch_9
    move-exception v0

    .line 42
    const-string v1, "BluetensEditor.open"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8
.end method

.method static time(I)Ljava/lang/String;
    .registers 6

    .prologue
    .line 51
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v1, "%d:%02d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    div-int/lit8 v4, p0, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    rem-int/lit8 v4, p0, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 47
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
