.class public Lcom/example/projectandroid1hit/PlayScreen;
.super Landroid/support/v7/app/AppCompatActivity;
.source "PlayScreen.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 10
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f09001d

    .line 11
    invoke-virtual {p0, p1}, Lcom/example/projectandroid1hit/PlayScreen;->setContentView(I)V

    return-void
.end method
