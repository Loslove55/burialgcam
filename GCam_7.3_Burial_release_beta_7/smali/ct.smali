.class final Lct;
.super Ljava/lang/Object;

# interfaces
.implements Lcs;


# instance fields
.field public final a:[Ljava/lang/Object;

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lct;->a:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lct;->b:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iget-object v2, p0, Lct;->a:[Ljava/lang/Object;

    aget-object v3, v2, v0

    aput-object v1, v2, v0

    iput v0, p0, Lct;->b:I

    return-object v3

    :cond_0
    return-object v1
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lct;->b:I

    iget-object v1, p0, Lct;->a:[Ljava/lang/Object;

    const/16 v2, 0x100

    if-ge v0, v2, :cond_0

    aput-object p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lct;->b:I

    :cond_0
    return-void
.end method
