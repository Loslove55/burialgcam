.class final synthetic Lfeg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lezu;


# direct methods
.method public constructor <init>(Lezu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfeg;->a:Lezu;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lfeg;->a:Lezu;

    invoke-virtual {v0}, Lezu;->a()V

    return-void
.end method
