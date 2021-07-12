.class public Landroid/support/constraint/motion/KeyCache;
.super Ljava/lang/Object;
.source "KeyCache.java"


# instance fields
.field map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[F>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/KeyCache;->map:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method getFloatValue(Ljava/lang/Object;Ljava/lang/String;I)F
    .registers 6

    .line 56
    iget-object v0, p0, Landroid/support/constraint/motion/KeyCache;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v1, 0x7fc00000    # Float.NaN

    if-nez v0, :cond_b

    return v1

    .line 59
    :cond_b
    iget-object v0, p0, Landroid/support/constraint/motion/KeyCache;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    .line 60
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    return v1

    .line 63
    :cond_1a
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    .line 64
    array-length p2, p1

    if-le p2, p3, :cond_26

    .line 65
    aget p1, p1, p3

    return p1

    :cond_26
    return v1
.end method

.method setFloatValue(Ljava/lang/Object;Ljava/lang/String;IF)V
    .registers 7

    .line 31
    iget-object v0, p0, Landroid/support/constraint/motion/KeyCache;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    add-int/lit8 v1, p3, 0x1

    .line 33
    new-array v1, v1, [F

    .line 34
    aput p4, v1, p3

    .line 35
    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object p2, p0, Landroid/support/constraint/motion/KeyCache;->map:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4d

    .line 38
    :cond_1c
    iget-object v0, p0, Landroid/support/constraint/motion/KeyCache;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 39
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    add-int/lit8 v1, p3, 0x1

    .line 40
    new-array v1, v1, [F

    .line 41
    aput p4, v1, p3

    .line 42
    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object p2, p0, Landroid/support/constraint/motion/KeyCache;->map:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4d

    .line 45
    :cond_39
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    .line 46
    array-length v1, p1

    if-gt v1, p3, :cond_48

    add-int/lit8 v1, p3, 0x1

    .line 47
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    .line 49
    :cond_48
    aput p4, p1, p3

    .line 50
    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4d
    return-void
.end method
