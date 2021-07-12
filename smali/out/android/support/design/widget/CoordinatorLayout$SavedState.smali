.class public Landroid/support/design/widget/CoordinatorLayout$SavedState;
.super Landroid/support/v4/view/AbsSavedState;
.source "CoordinatorLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/CoordinatorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/support/design/widget/CoordinatorLayout$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field behaviorStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 3277
    new-instance v0, Landroid/support/design/widget/CoordinatorLayout$SavedState$1;

    invoke-direct {v0}, Landroid/support/design/widget/CoordinatorLayout$SavedState$1;-><init>()V

    sput-object v0, Landroid/support/design/widget/CoordinatorLayout$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .registers 8

    .line 3239
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/AbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 3241
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3243
    new-array v1, v0, [I

    .line 3244
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 3246
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object p1

    .line 3248
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p2, p0, Landroid/support/design/widget/CoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    const/4 p2, 0x0

    :goto_18
    if-ge p2, v0, :cond_26

    .line 3250
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    aget v3, v1, p2

    aget-object v4, p1, p2

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_18

    :cond_26
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .registers 2

    .line 3255
    invoke-direct {p0, p1}, Landroid/support/v4/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8

    .line 3260
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3262
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 3263
    :goto_e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3265
    new-array v2, v0, [I

    .line 3266
    new-array v3, v0, [Landroid/os/Parcelable;

    :goto_15
    if-ge v1, v0, :cond_2c

    .line 3269
    iget-object v4, p0, Landroid/support/design/widget/CoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    aput v4, v2, v1

    .line 3270
    iget-object v4, p0, Landroid/support/design/widget/CoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 3272
    :cond_2c
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3273
    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    return-void
.end method
