.class Landroid/support/constraint/motion/KeyCycleOscillator$ProgressSet;
.super Landroid/support/constraint/motion/KeyCycleOscillator;
.source "KeyCycleOscillator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/motion/KeyCycleOscillator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProgressSet"
.end annotation


# instance fields
.field mNoMethod:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .line 292
    invoke-direct {p0}, Landroid/support/constraint/motion/KeyCycleOscillator;-><init>()V

    const/4 v0, 0x0

    .line 293
    iput-boolean v0, p0, Landroid/support/constraint/motion/KeyCycleOscillator$ProgressSet;->mNoMethod:Z

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;F)V
    .registers 12

    const-string v0, "unable to setProgress"

    const-string v1, "KeyCycleOscillator"

    .line 297
    instance-of v2, p1, Landroid/support/constraint/motion/MotionLayout;

    if-eqz v2, :cond_12

    .line 298
    check-cast p1, Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyCycleOscillator$ProgressSet;->get(F)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/support/constraint/motion/MotionLayout;->setProgress(F)V

    goto :goto_48

    .line 300
    :cond_12
    iget-boolean v2, p0, Landroid/support/constraint/motion/KeyCycleOscillator$ProgressSet;->mNoMethod:Z

    if-eqz v2, :cond_17

    return-void

    :cond_17
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 305
    :try_start_1a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "setProgress"

    new-array v7, v4, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_2a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1a .. :try_end_2a} :catch_2b

    goto :goto_2d

    .line 307
    :catch_2b
    iput-boolean v4, p0, Landroid/support/constraint/motion/KeyCycleOscillator$ProgressSet;->mNoMethod:Z

    :goto_2d
    if-eqz v2, :cond_48

    :try_start_2f
    new-array v4, v4, [Ljava/lang/Object;

    .line 311
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyCycleOscillator$ProgressSet;->get(F)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v4, v3

    invoke-virtual {v2, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3e
    .catch Ljava/lang/IllegalAccessException; {:try_start_2f .. :try_end_3e} :catch_44
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2f .. :try_end_3e} :catch_3f

    goto :goto_48

    :catch_3f
    move-exception p1

    .line 315
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_48

    :catch_44
    move-exception p1

    .line 313
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_48
    :goto_48
    return-void
.end method
