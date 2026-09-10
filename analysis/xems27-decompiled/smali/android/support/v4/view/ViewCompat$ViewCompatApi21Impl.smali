.class Landroid/support/v4/view/ViewCompat$ViewCompatApi21Impl;
.super Landroid/support/v4/view/ViewCompat$ViewCompatApi19Impl;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewCompatApi21Impl"
.end annotation


# static fields
.field private static sThreadLocalRect:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1140
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$ViewCompatApi19Impl;-><init>()V

    return-void
.end method

.method private static getEmptyTempRect()Landroid/graphics/Rect;
    .locals 2

    .line 1381
    sget-object v0, Landroid/support/v4/view/ViewCompat$ViewCompatApi21Impl;->sThreadLocalRect:Ljava/lang/ThreadLocal;

    if-nez v0, :cond_0

    .line 1382
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewCompat$ViewCompatApi21Impl;->sThreadLocalRect:Ljava/lang/ThreadLocal;

    .line 1384
    :cond_0
    sget-object v0, Landroid/support/v4/view/ViewCompat$ViewCompatApi21Impl;->sThreadLocalRect:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 1385
    .local v0, "rect":Landroid/graphics/Rect;
    if-nez v0, :cond_1

    .line 1386
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    move-object v0, v1

    .line 1387
    sget-object v1, Landroid/support/v4/view/ViewCompat$ViewCompatApi21Impl;->sThreadLocalRect:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1389
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1390
    return-object v0
.end method


# virtual methods
.method public dispatchApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/support/v4/view/WindowInsetsCompat;

    .line 1310
    invoke-static {p2}, Landroid/support/v4/view/WindowInsetsCompat;->unwrap(Landroid/support/v4/view/WindowInsetsCompat;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInsets;

    .line 1311
    .local v0, "unwrapped":Landroid/view/WindowInsets;
    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v1

    .line 1312
    .local v1, "result":Landroid/view/WindowInsets;
    if-eq v1, v0, :cond_0

    .line 1313
    new-instance v2, Landroid/view/WindowInsets;

    invoke-direct {v2, v1}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    move-object v0, v2

    .line 1315
    :cond_0
    invoke-static {v0}, Landroid/support/v4/view/WindowInsetsCompat;->wrap(Ljava/lang/Object;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v2

    return-object v2
.end method

.method public dispatchNestedFling(Landroid/view/View;FFZ)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .line 1237
    invoke-virtual {p1, p2, p3, p4}, Landroid/view/View;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(Landroid/view/View;FF)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .line 1242
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(Landroid/view/View;II[I[I)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I
    .param p5, "offsetInWindow"    # [I

    .line 1231
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->dispatchNestedPreScroll(II[I[I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(Landroid/view/View;IIII[I)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I
    .param p6, "offsetInWindow"    # [I

    .line 1224
    invoke-virtual/range {p1 .. p6}, Landroid/view/View;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    return v0
.end method

.method public getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 1252
    invoke-virtual {p1}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 1295
    invoke-virtual {p1}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getElevation(Landroid/view/View;)F
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 1165
    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    move-result v0

    return v0
.end method

.method public getTransitionName(Landroid/view/View;)Ljava/lang/String;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 1150
    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTranslationZ(Landroid/view/View;)F
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 1175
    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result v0

    return v0
.end method

.method public getZ(Landroid/view/View;)F
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 1320
    invoke-virtual {p1}, Landroid/view/View;->getZ()F

    move-result v0

    return v0
.end method

.method public hasNestedScrollingParent(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 1218
    invoke-virtual {p1}, Landroid/view/View;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public isImportantForAccessibility(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 1247
    invoke-virtual {p1}, Landroid/view/View;->isImportantForAccessibility()Z

    move-result v0

    return v0
.end method

.method public isNestedScrollingEnabled(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 1203
    invoke-virtual {p1}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method public offsetLeftAndRight(Landroid/view/View;I)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "offset"    # I

    .line 1330
    invoke-static {}, Landroid/support/v4/view/ViewCompat$ViewCompatApi21Impl;->getEmptyTempRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 1331
    .local v0, "parentRect":Landroid/graphics/Rect;
    const/4 v1, 0x0

    .line 1333
    .local v1, "needInvalidateWorkaround":Z
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 1334
    .local v2, "parent":Landroid/view/ViewParent;
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 1335
    move-object v3, v2

    check-cast v3, Landroid/view/View;

    .line 1336
    .local v3, "p":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 1339
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    .line 1340
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 1339
    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    move v1, v4

    .line 1344
    .end local v3    # "p":Landroid/view/View;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewCompat$ViewCompatApi19Impl;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 1348
    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1349
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 1348
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1350
    move-object v3, v2

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 1352
    :cond_1
    return-void
.end method

.method public offsetTopAndBottom(Landroid/view/View;I)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "offset"    # I

    .line 1356
    invoke-static {}, Landroid/support/v4/view/ViewCompat$ViewCompatApi21Impl;->getEmptyTempRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 1357
    .local v0, "parentRect":Landroid/graphics/Rect;
    const/4 v1, 0x0

    .line 1359
    .local v1, "needInvalidateWorkaround":Z
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 1360
    .local v2, "parent":Landroid/view/ViewParent;
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 1361
    move-object v3, v2

    check-cast v3, Landroid/view/View;

    .line 1362
    .local v3, "p":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 1365
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    .line 1366
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 1365
    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    move v1, v4

    .line 1370
    .end local v3    # "p":Landroid/view/View;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewCompat$ViewCompatApi19Impl;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 1374
    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1375
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 1374
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1376
    move-object v3, v2

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 1378
    :cond_1
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/support/v4/view/WindowInsetsCompat;

    .line 1300
    invoke-static {p2}, Landroid/support/v4/view/WindowInsetsCompat;->unwrap(Landroid/support/v4/view/WindowInsetsCompat;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInsets;

    .line 1301
    .local v0, "unwrapped":Landroid/view/WindowInsets;
    invoke-virtual {p1, v0}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v1

    .line 1302
    .local v1, "result":Landroid/view/WindowInsets;
    if-eq v1, v0, :cond_0

    .line 1303
    new-instance v2, Landroid/view/WindowInsets;

    invoke-direct {v2, v1}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    move-object v0, v2

    .line 1305
    :cond_0
    invoke-static {v0}, Landroid/support/v4/view/WindowInsetsCompat;->wrap(Ljava/lang/Object;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v2

    return-object v2
.end method

.method public requestApplyInsets(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 1155
    invoke-virtual {p1}, Landroid/view/View;->requestApplyInsets()V

    .line 1156
    return-void
.end method

.method public setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "tintList"    # Landroid/content/res/ColorStateList;

    .line 1257
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 1259
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_2

    .line 1262
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1263
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1264
    invoke-virtual {p1}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1265
    .local v1, "hasTint":Z
    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 1266
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1267
    invoke-virtual {p1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1269
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1272
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    .end local v1    # "hasTint":Z
    :cond_2
    return-void
.end method

.method public setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .line 1276
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 1278
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_2

    .line 1281
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1282
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1283
    invoke-virtual {p1}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1284
    .local v1, "hasTint":Z
    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 1285
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1286
    invoke-virtual {p1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1288
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1291
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    .end local v1    # "hasTint":Z
    :cond_2
    return-void
.end method

.method public setElevation(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "elevation"    # F

    .line 1160
    invoke-virtual {p1, p2}, Landroid/view/View;->setElevation(F)V

    .line 1161
    return-void
.end method

.method public setNestedScrollingEnabled(Landroid/view/View;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    .line 1198
    invoke-virtual {p1, p2}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    .line 1199
    return-void
.end method

.method public setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "listener"    # Landroid/support/v4/view/OnApplyWindowInsetsListener;

    .line 1181
    if-nez p2, :cond_0

    .line 1182
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 1183
    return-void

    .line 1186
    :cond_0
    new-instance v0, Landroid/support/v4/view/ViewCompat$ViewCompatApi21Impl$1;

    invoke-direct {v0, p0, p2}, Landroid/support/v4/view/ViewCompat$ViewCompatApi21Impl$1;-><init>(Landroid/support/v4/view/ViewCompat$ViewCompatApi21Impl;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 1194
    return-void
.end method

.method public setTransitionName(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "transitionName"    # Ljava/lang/String;

    .line 1145
    invoke-virtual {p1, p2}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 1146
    return-void
.end method

.method public setTranslationZ(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "translationZ"    # F

    .line 1170
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationZ(F)V

    .line 1171
    return-void
.end method

.method public setZ(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "z"    # F

    .line 1325
    invoke-virtual {p1, p2}, Landroid/view/View;->setZ(F)V

    .line 1326
    return-void
.end method

.method public startNestedScroll(Landroid/view/View;I)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "axes"    # I

    .line 1208
    invoke-virtual {p1, p2}, Landroid/view/View;->startNestedScroll(I)Z

    move-result v0

    return v0
.end method

.method public stopNestedScroll(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 1213
    invoke-virtual {p1}, Landroid/view/View;->stopNestedScroll()V

    .line 1214
    return-void
.end method
