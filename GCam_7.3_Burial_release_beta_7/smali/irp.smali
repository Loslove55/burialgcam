.class final synthetic Lirp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lisx;


# direct methods
.method public constructor <init>(Lisx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lirp;->a:Lisx;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lirp;->a:Lisx;

    invoke-virtual {v0}, Lirz;->e()V

    return-void
.end method
