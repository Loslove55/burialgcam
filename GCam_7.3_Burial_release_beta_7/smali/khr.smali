.class final synthetic Lkhr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lkic;


# direct methods
.method public constructor <init>(Lkic;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkhr;->a:Lkic;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lkhr;->a:Lkic;

    invoke-virtual {v0}, Lkhp;->a()V

    return-void
.end method
