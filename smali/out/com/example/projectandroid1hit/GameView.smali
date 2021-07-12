.class public Lcom/example/projectandroid1hit/GameView;
.super Landroid/view/SurfaceView;
.source "GameView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private isPlaying:Z

.field private thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private drew()V
    .registers 1

    return-void
.end method

.method private sleep()V
    .registers 1

    return-void
.end method

.method private update()V
    .registers 1

    return-void
.end method


# virtual methods
.method public pause()V
    .registers 2

    const/4 v0, 0x0

    .line 47
    :try_start_1
    iput-boolean v0, p0, Lcom/example/projectandroid1hit/GameView;->isPlaying:Z

    .line 48
    iget-object v0, p0, Lcom/example/projectandroid1hit/GameView;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_8} :catch_9

    goto :goto_d

    :catch_9
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_d
    return-void
.end method

.method public resume()V
    .registers 2

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/example/projectandroid1hit/GameView;->isPlaying:Z

    .line 41
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/example/projectandroid1hit/GameView;->thread:Ljava/lang/Thread;

    .line 42
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public run()V
    .registers 2

    .line 17
    :goto_0
    iget-boolean v0, p0, Lcom/example/projectandroid1hit/GameView;->isPlaying:Z

    if-eqz v0, :cond_e

    .line 18
    invoke-direct {p0}, Lcom/example/projectandroid1hit/GameView;->update()V

    .line 19
    invoke-direct {p0}, Lcom/example/projectandroid1hit/GameView;->drew()V

    .line 20
    invoke-direct {p0}, Lcom/example/projectandroid1hit/GameView;->sleep()V

    goto :goto_0

    :cond_e
    return-void
.end method
